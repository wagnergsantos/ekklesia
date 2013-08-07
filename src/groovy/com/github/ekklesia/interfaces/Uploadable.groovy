package com.github.ekklesia.interfaces

interface Uploadable {
	String group()
	String path()
	Long maxSize()
	String[] allowedExtensions()
}
