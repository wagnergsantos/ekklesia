package com.github.ekklesia.taglib

/**
 * MenuTagLib
 * A taglib library provides a set of reusable tags to help rendering the views.
 */
class MenuTagLib {
	
	private static final String ATTR_DESCRIPTION = "description"
	private static final String ATTR_CONTROLLER = "controller"

	static namespace = 'ekklesia'

	def menu = { attr, body ->
		def texto = attr[ATTR_DESCRIPTION]
		out << "<ul class='nav'>"
		out << "<li class='dropdown'>"
		out << "<a class='dropdown-toggle' data-toggle='dropdown' href='#'>${texto} <b class='caret'></b></a>"
		out << "<ul class='dropdown-menu'>"
		out << body()
		out << "</ul>"
		out << "</li>"
		out << "</ul>"
	}
	
	def menuitem = { attr, body ->
		out << "<li class='controller'>"
		out << link([controller: attr[ATTR_CONTROLLER]], attr[ATTR_DESCRIPTION])
		out << "</li>"
	}
}
