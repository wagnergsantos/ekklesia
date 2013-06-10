package com.github.ekklesia.secretaria

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
	byte[] logo

	static hasMany = [filiais:Igreja, participantes:Participante]
	static belongsTo = [matriz:Igreja,lider:Participante]

	static constraints = {
		logo(maxSize:50000)
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
