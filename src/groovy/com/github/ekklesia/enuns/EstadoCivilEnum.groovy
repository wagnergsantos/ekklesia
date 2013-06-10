package com.github.ekklesia.enuns;

enum EstadoCivilEnum {

	CASADO("Casado"),SOLTEIRO("Solteiro"),
	SEPARADO("Separado"),DIVORCIADO("Divorciado"),VIUVO("Viúvo")

	final String value

	EstadoCivilEnum(String value) {
		this.value = value
	}

	String toString() {
		value
	}
	String getKey() {
		name()
	}
}
