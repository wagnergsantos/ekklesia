package com.github.ekklesia.util

import org.springframework.dao.DataIntegrityViolationException

/**
 * UploadFileController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class UploadFileController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def show={
			def ufile = UploadFile.get(params.int("id"))
	        if (!ufile) {
	          response.sendError(404)
	          return;
	        }			
			def file = new File(ufile.path)
			
			if (file.exists()) {
				response.setContentType(ufile.mimeType)
		        response.setContentLength(ufile.size.toInteger())
		        OutputStream out = response.getOutputStream();
				out.write(file.bytes)
		        out.close();
			}
	
	}
	
	def download = {
		
			UploadFile ufile = UploadFile.get(params.id)
			if (!ufile) {
				def msg = messageSource.getMessage("fileupload.download.nofile", [params.id] as Object[], request.locale)
				log.debug msg
				flash.message = msg
				redirect controller: params.errorController, action: params.errorAction
				return
			}
			
			def file = new File(ufile.path)
			if (file.exists()) {
				log.debug "Serving file id=[${ufile.id}] to ${request.remoteAddr}"
				ufile.save()
				response.setContentType("application/octet-stream")
				response.setHeader("Content-disposition", "${params.contentDisposition}; filename=${ufile.originalName}")
				response.outputStream << file.readBytes()
				return
			} else {
				def msg = messageSource.getMessage("fileupload.download.filenotfound", [ufile.name] as Object[], request.locale)
				log.error msg
				flash.message = msg
				redirect controller: params.errorController, action: params.errorAction
				return
			}
		}
}
