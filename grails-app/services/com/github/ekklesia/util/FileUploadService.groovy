package com.github.ekklesia.util

import java.util.Locale;

import com.github.ekklesia.exceptions.FileUploaderServiceException;
import org.springframework.web.multipart.commons.CommonsMultipartFile


/**
 * FileUploadService
 * A service class encapsulates the core business logic of a Grails application
 */
class FileUploadService {

	static transactional = true

	def grailsApplication

	def UploadFile saveFile(CommonsMultipartFile file, String group) throws FileUploaderServiceException {

		//config handler
		def config = grailsApplication.config.fileuploader[group]
		
		def messageSource
		
		def name = file.originalFilename

		/** *********************
		 check extensions
		 *********************** */
		def fileExtension = file.originalFilename.substring(file.originalFilename.lastIndexOf('.') + 1)
		if (!config.allowedExtensions[0].equals("*") && !config.allowedExtensions.contains(fileExtension)) {
			def msg = messageSource.getMessage("fileupload.upload.unauthorizedExtension", [
				fileExtension,
				config.allowedExtensions] as Object[])
			log.debug msg
			throw new FileUploaderServiceException(msg)
		}

		/** *******************
		 check file size
		 ********************* */
		if (config.maxSize) { //if maxSize config exists
			def maxSizeInKb = ((int) (config.maxSize / 1024))
			if (file.size > config.maxSize) { //if filesize is bigger than allowed
				log.debug "FileUploader plugin received a file bigger than allowed. Max file size is ${maxSizeInKb} kb"
				def msg = messageSource.getMessage("fileupload.upload.fileBiggerThanAllowed", [maxSizeInKb] as Object[])
				throw new FileUploaderServiceException(msg)
			}
		}
		
		

		//base path to save file
		def path = config.path
		if (!path.endsWith('/'))
			path = path + "/"

		//sets new path
		path = path + group + "/"
		if (!new File(path).mkdirs())
			log.info "FileUploader plugin couldn't create directories: [${path}]"
		path = path + name

		//move file
		log.debug "FileUploader plugin received a ${file.size}b file. Moving to ${path}"
		file.transferTo(new File(path))

		//save it on the database
		def ufile = new UploadFile()
		ufile.name = name
		ufile.originalName = file.originalFilename
		ufile.size = file.size
		ufile.mimeType = file.contentType
		ufile.dateUploaded = new Date()
		ufile.path = path
		ufile.downloads = 0
		
		if (ufile.hasErrors()) {
			ufile.errors.allErrors.each {
				ufile.save()
			}
		}
		
		ufile.save()
		
		return ufile
	}

	def boolean deleteFile(def idUfile) {
		def borro = false;
		def ufile = UploadFile.get(idUfile)
		if (!ufile) {
			log.error "could not delete file: ${file}"
			return;
		}
		def file = new File(ufile.path)
		if (file.exists()) {
			if (file.delete()) {
				log.debug "file [${ufile.path}] deleted"
				borro=true;
			} else {
				log.error "could not delete file: ${file}"
			}
		}
		return borro;
	}
}
