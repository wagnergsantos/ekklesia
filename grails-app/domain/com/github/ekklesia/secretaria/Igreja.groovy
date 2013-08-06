package com.github.ekklesia.secretaria

import com.github.ekklesia.util.UploadFile;

class Igreja {

	String nome
	String nomeFantasia
	String email
	String endereco
	String cep
	String cidade
	String bairro
	String uf
	Date dataFundacao
	String telefone
	String cnpj
	String site
	UploadFile logo

	static hasMany = [filiais:Igreja, participantes:Participante]
	static belongsTo = [matriz:Igreja,lider:Participante]

	static constraints = {
		logo()
		nome(blank:false)
		nomeFantasia(blank:false)
		cnpj()
		dataFundacao()
		endereco(blank:false)
		cidade()
		bairro()
		cep()
		uf()
		email(email:true)
		telefone()
		site()
		matriz(nullable:true)
		lider(nullable:true)
		filiais()
		participantes()
	}

	String toString(){
		return "${nome} - ${matriz}"
	}
}
