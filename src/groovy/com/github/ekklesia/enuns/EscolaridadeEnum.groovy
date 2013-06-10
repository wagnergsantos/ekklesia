package com.github.ekklesia.enuns

enum EscolaridadeEnum {

	FUNDAMENTAL_INCOMPLETO("Fundamental Incompleto"),
	FUNDAMENTAL_COMPLETO("Fundamental Completo"),
	MEDIO_COMPLETO("Médio Completo"),
	SUPERIOR_INCOMPLETO("Superior Incompleto"),
	SUPERIOR_COMPLETO("Superior Completo"),
	POS_GRADUADO("Pós-graduado"),
	MESTRADO("Mestrado"),
	DOUTORADO("Doutorado")


	final String value

	EscolaridadeEnum(String value) {
		this.value = value
	}

	String toString() {
		value
	}
	String getKey() {
		name()
	}
}
