package com.github.ekklesia.secretaria

import com.github.ekklesia.interfaces.Uploadable;
import com.github.ekklesia.util.UploadFile;

class Igreja implements Uploadable {

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
	
	@Override
	public String group() {
		return "igreja";
	}
	@Override
	public String path() {
		return System.getProperty("java.io.tmpdir");
	}
	@Override
	public Long maxSize() {
		return 1024 * 1024 //1 mbytes;
	}
	@Override
	public String[] allowedExtensions() {
		return ["jpg","jpeg","gif","png"];
	}
}
