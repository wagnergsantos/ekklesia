package com.github.ekklesia.administracao

import com.github.ekklesia.secretaria.Participante;

class RedeMinisterial {  
	  
    String nome
    Participante lider

    static constraints = {
		nome(blank:false)
		lider(nullable:true)
    }
	
	String toString(){
		return "${nome} - ${lider}"
	}
}
