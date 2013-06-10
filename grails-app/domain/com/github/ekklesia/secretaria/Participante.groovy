package com.github.ekklesia.secretaria

import com.github.ekklesia.administracao.Cargo;
import com.github.ekklesia.administracao.FuncaoMinisterial;
import com.github.ekklesia.administracao.RedeMinisterial;
import com.github.ekklesia.enuns.EscolaridadeEnum;
import com.github.ekklesia.enuns.EstadoCivilEnum;
import com.github.ekklesia.enuns.SexoEnum;
import com.github.ekklesia.enuns.SituacaoEnum;
import com.github.ekklesia.enuns.TipoAdmissaoEnum;
import com.github.ekklesia.escola.Turma;

class Participante {

	byte[] foto
	String nome
	String cpf
	String rg
	String email
	String endereco
	Date dataNascimento
	String telResidencial
	String telComercial
	String telCelular
	String cep
	String cidade
	String bairro
	String uf
	Date dataConversao
	Date dataBatismo
	SexoEnum sexo
	EstadoCivilEnum estadoCivil
	String profissao
	EscolaridadeEnum escolaridade
	String naturalidade
	SituacaoEnum situacao
	Cargo cargo
	RedeMinisterial rede
	FuncaoMinisterial funcao
	TipoAdmissaoEnum tipoAdmissao
	String site
	Participante lider
	Celula participaCelula
	Boolean professor

	static hasMany = [discipulos:Participante, dependentes:Participante,
		lideraCelulas:Celula]
	static belongsTo = [igreja:Igreja]
	
	static mappedBy = [lideraCelulas:'lider']

	static constraints = {
		foto(maxSize:50000)
		nome(blank:false)
		cpf()
		rg()
		sexo()
		dataNascimento()
		dataConversao()
		dataBatismo()
		naturalidade()
		estadoCivil()
		escolaridade()
		profissao()
		endereco(blank:false)
		cidade()
		bairro()
		cep()
		uf()
		email(email:true, unique:true)
		site()
		telResidencial()
		telComercial()
		telCelular()
		professor()
		situacao()
		rede(nullable:true)
		cargo(nullable:true)
		funcao(nullable:true)
		tipoAdmissao(nullable:false)
		igreja()
		lider(nullable:true)
		dependentes(nullable:true)
		discipulos(nullable:true)
		participaCelula(nullable:true)
	}

	String toString(){
		return "${nome}"
	}
}
