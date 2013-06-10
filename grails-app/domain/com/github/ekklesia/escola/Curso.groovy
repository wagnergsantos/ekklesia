package com.github.ekklesia.escola

class Curso {
	
	String nome	
	Integer cargaHoraria
	
	static belongsTo = [escola:Escola]
	static hasMany = [turmas:Turma,disciplinas:Disciplina]	

    static constraints = {
		nome(blank:false)
		cargaHoraria(nullable:false)
		escola(nullable:false)
		disciplinas(nullable:true)
		turmas(nullable:true)		
    }
	
	String toString(){
		return "${nome}"
	}
}
