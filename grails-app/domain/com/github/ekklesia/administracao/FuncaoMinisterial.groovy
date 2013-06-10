package com.github.ekklesia.administracao

/**
 * Função Ministerial desempenhado pelo membro.
 * Pode ser:
 * - Pastor
 * - Missionário
 * - Diácono
 * - Entre outros.
 * 
 * @author wagner
 */
class FuncaoMinisterial {

	String nome

	static constraints = {
		nome(blank:false)
	}

	String toString(){
		return "${nome}"
	}
}
