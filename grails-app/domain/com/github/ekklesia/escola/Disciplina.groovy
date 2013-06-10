package com.github.ekklesia.escola

class Disciplina {

	String descricao
	Disciplina preRequisito
	
	static belongsTo = [curso:Curso]

	static constraints = { 
		descricao(blank:false)
		curso(nullable:false)
		preRequisito(nullable:true)
	}

	String toString(){
		return "${descricao}"
	}
}
