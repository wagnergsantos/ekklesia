package com.github.ekklesia.enuns;

/**
 * Forma como o participante foi admitido na igreja.
 * @author wagner
 *
 */
enum TipoAdmissaoEnum {

	A("Aclamação"),T("Transferencia"),B("Batismo"),O("Outros"),C("Célula")

	final String value

	TipoAdmissaoEnum(String value) {
		this.value = value
	}

	String toString() {
		value
	}
	String getKey() {
		name()
	}
}
