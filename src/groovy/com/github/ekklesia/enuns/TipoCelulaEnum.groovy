package com.github.ekklesia.enuns;


enum TipoCelulaEnum {

	ADULTOS("Adultos"),CRIANCAS("Crianças"),CASAIS("Casais")

	final String value

	TipoCelulaEnum(String value) {
		this.value = value
	}

	String toString() {
		value
	}
	String getKey() {
		name()
	}
}
