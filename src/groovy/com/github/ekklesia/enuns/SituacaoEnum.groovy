package com.github.ekklesia.enuns;

/**
 * Situação atual do participante
 * @author wagner
 *
 */
enum SituacaoEnum {

	A("Ativo"),I("Inativo")

	final String value

	SituacaoEnum(String value) {
		this.value = value
	}

	String toString() {
		value
	}
	String getKey() {
		name()
	}
}
