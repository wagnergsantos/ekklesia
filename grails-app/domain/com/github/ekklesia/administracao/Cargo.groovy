package com.github.ekklesia.administracao

import com.github.ekklesia.secretaria.Participante;

/**
 * Cargo ocupado pelo participante:
 * - Tesoureiro
 * - Secretário
 * 
 * @author wagner
 *
 */
class Cargo {

	String nome	

	static constraints = {
		nome(blank:false)
	}

	String toString(){nome}
}
