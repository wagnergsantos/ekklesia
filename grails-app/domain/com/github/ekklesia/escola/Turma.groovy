package com.github.ekklesia.escola

import com.github.ekklesia.secretaria.Participante;

class Turma {
	
	String descricao
	Participante professor
	Disciplina disciplina
	
	static belongsTo = [curso:Curso]		
	static hasMany = [alunos:Participante]

    static constraints = {
		descricao(blank:false)		
		disciplina(nullable:false)
		professor(nullable:false)
		alunos(nullable:true)
    }
	
	String toString(){
		return "${descricao}"
	}		
}
