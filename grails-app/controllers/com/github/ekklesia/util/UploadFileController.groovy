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
}
