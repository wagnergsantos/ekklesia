package com.github.ekklesia.enuns;

enum SexoEnum {

	M("Masculino"),F("Feminino")

	final String value

	SexoEnum(String value) {
		this.value = value
	}

	String toString() {
		value
	}
	String getKey() {
		name()
	}
}
