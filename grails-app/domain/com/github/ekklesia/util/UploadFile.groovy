package com.github.ekklesia.util

import java.util.Date;

/**
 * UploadFile
 * A domain class describes the data object and it's mapping to the database
 */
class UploadFile {

	Long size
	String path
	String name
	String originalName
	String mimeType
	Date dateCreated

	static constraints = {
		size(min:0L)
		path(blank:false)
		name(blank:false)
		originalName(blank:false)
		mimeType(blank:false)
	}


	def afterDelete() {
		try {
			File f = new File(path)

			if (f.delete()) {
				log.debug "file [${path}] deleted"
			} else {
				log.error "could not delete file: ${file}"
			}
		} catch (Exception exp) {
			log.error "Error deleting file: ${e.message}"
			log.error exp
		}
	}
}
