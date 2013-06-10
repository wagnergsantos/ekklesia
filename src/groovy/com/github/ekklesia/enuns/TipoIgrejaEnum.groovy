package com.github.ekklesia.enuns;


enum TipoIgrejaEnum {

	M("Matriz"),F("Filial")

	final String value

	TipoIgrejaEnum(String value) {
		this.value = value
	}

	String toString() {
		value
	}
	String getKey() {
		name()
	}
}
