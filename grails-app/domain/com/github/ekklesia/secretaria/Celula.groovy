package com.github.ekklesia.secretaria

import com.github.ekklesia.enuns.TipoCelulaEnum;

class Celula {

	String nome
	TipoCelulaEnum tipo
	Date dataCriacao
	Date horario
	Integer diaSemana
	String endereco
	String cep
	String cidade
	String bairro
	String uf
	Participante lider
	Participante colider
	Participante anfitriao

	static belongsTo = [igreja:Igreja]
	static hasMany = [integrantes:Participante]
	static mappedBy =[lider:'lideraCelulas']

	static constraints = {
		nome(blank:false)
		tipo(nullable:false)
		dataCriacao(nullable:false)
		horario(nullable:false)
		diaSemana(nullable:false)
		endereco(nullable:false)
		cep()
		cidade(nullable:false)
		bairro(nullable:false)
		uf(nullable:false)
		lider(nullable:false)
		colider()
		anfitriao(nullable:false)
		igreja(nullable:false)
		integrantes()
	}

	String toString(){
		return "${nome} - ${lider}"
	}
}
