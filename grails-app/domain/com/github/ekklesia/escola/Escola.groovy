package com.github.ekklesia.escola

import com.github.ekklesia.secretaria.Igreja;

class Escola {
	
	String nome
	
	static hasMany = [cursos:Curso]
	static belongsTo = [igreja:Igreja]

    static constraints = {
		nome(blank:false)
		igreja(nullable:true)
		cursos(nullable:true)
    }
	
	String toString(){
		return "${nome}"
	}	
}
