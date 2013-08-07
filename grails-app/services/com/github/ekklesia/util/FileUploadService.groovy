package com.github.ekklesia.util

import java.util.Locale;

import com.github.ekklesia.exceptions.FileUploaderServiceException;
import com.github.ekklesia.interfaces.Uploadable;

import org.springframework.web.multipart.commons.CommonsMultipartFile


/**
 * FileUploadService
 * A service class encapsulates the core business logic of a Grails application
 */
class FileUploadService {

	static transactional = true

	def grailsApplication

	def UploadFile saveFile(CommonsMultipartFile file, Uploadable uploadable) throws FileUploaderServiceException {

		def messageSource

		/** *********************
		 check extensions
		 *********************** */
		def fileExtension = file.originalFilename.substring(file.originalFilename.lastIndexOf('.') + 1)
		if (!uploadable.allowedExtensions()[0].equals("*") && !uploadable.allowedExtensions().contains(fileExtension)) {
			def msg = messageSource.getMessage("fileupload.upload.unauthorizedExtension", [fileExtension,uploadable.allowedExtensions()] as Object[])
			log.debug msg
			throw new FileUploaderServiceException(msg)
		}

		/** *******************
		 check file size
		 ********************* */
		if (uploadable.maxSize()) { //if maxSize config exists
			def maxSizeInKb = ((int) (uploadable.maxSize() / 1024))
			if (file.size > uploadable.maxSize()) { //if filesize is bigger than allowed
				log.debug "FileUploader plugin received a file bigger than allowed. Max file size is ${maxSizeInKb} kb"
				def msg = messageSource.getMessage("fileupload.upload.fileBiggerThanAllowed", [maxSizeInKb] as Object[])
				throw new FileUploaderServiceException(msg)
			}
		}



		def name = file.bytes.encodeAsSHA256()
		def originalFilename = file.originalFilename
		def contentType = file.contentType
		def fileSize = file.size

		def path = uploadable.path() + File.separator + uploadable.group() + File.separator +
				file.bytes.encodeAsSHA256()[0..31] + File.separator +file.bytes.encodeAsSHA256()[32..63]

		if (!new File(path).mkdirs())
			log.info "FileUploader plugin couldn't create directories: [${path}]"

		def tempFile = new File(path,name)
		//move file
		file.transferTo(tempFile)
		log.debug "FileUploader plugin received a ${file.size}b file. Moving to ${path}"




		//save it on the database
		def ufile = new UploadFile()
		ufile.name = name
		ufile.originalName = originalFilename
		ufile.size = fileSize
		ufile.mimeType = contentType
		ufile.path = tempFile.absolutePath


		if (ufile.validate()) {
			ufile.save(failOnError:true)
		}
		else {
			ufile.errors.allErrors.each { log.error it }
		}

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
