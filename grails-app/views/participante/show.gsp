
<%@ page import="com.github.ekklesia.secretaria.Participante" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'participante.label', default: 'Participante')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-participante" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.foto.label" default="Foto" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.nome.label" default="Nome" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: participanteInstance, field: "nome")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.cpf.label" default="Cpf" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: participanteInstance, field: "cpf")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.rg.label" default="Rg" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: participanteInstance, field: "rg")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.sexo.label" default="Sexo" /></td>
				
				<td valign="top" class="value">${participanteInstance?.sexo?.encodeAsHTML()}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.dataNascimento.label" default="Data Nascimento" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${participanteInstance?.dataNascimento}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.dataConversao.label" default="Data Conversao" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${participanteInstance?.dataConversao}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.dataBatismo.label" default="Data Batismo" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${participanteInstance?.dataBatismo}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.naturalidade.label" default="Naturalidade" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: participanteInstance, field: "naturalidade")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.estadoCivil.label" default="Estado Civil" /></td>
				
				<td valign="top" class="value">${participanteInstance?.estadoCivil?.encodeAsHTML()}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.escolaridade.label" default="Escolaridade" /></td>
				
				<td valign="top" class="value">${participanteInstance?.escolaridade?.encodeAsHTML()}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.profissao.label" default="Profissao" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: participanteInstance, field: "profissao")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.endereco.label" default="Endereco" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: participanteInstance, field: "endereco")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.cidade.label" default="Cidade" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: participanteInstance, field: "cidade")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.bairro.label" default="Bairro" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: participanteInstance, field: "bairro")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.cep.label" default="Cep" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: participanteInstance, field: "cep")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.uf.label" default="Uf" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: participanteInstance, field: "uf")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.email.label" default="Email" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: participanteInstance, field: "email")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.site.label" default="Site" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: participanteInstance, field: "site")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.telResidencial.label" default="Tel Residencial" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: participanteInstance, field: "telResidencial")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.telComercial.label" default="Tel Comercial" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: participanteInstance, field: "telComercial")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.telCelular.label" default="Tel Celular" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: participanteInstance, field: "telCelular")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.professor.label" default="Professor" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${participanteInstance?.professor}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.situacao.label" default="Situacao" /></td>
				
				<td valign="top" class="value">${participanteInstance?.situacao?.encodeAsHTML()}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.rede.label" default="Rede" /></td>
				
				<td valign="top" class="value"><g:link controller="redeMinisterial" action="show" id="${participanteInstance?.rede?.id}">${participanteInstance?.rede?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.cargo.label" default="Cargo" /></td>
				
				<td valign="top" class="value"><g:link controller="cargo" action="show" id="${participanteInstance?.cargo?.id}">${participanteInstance?.cargo?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.funcao.label" default="Funcao" /></td>
				
				<td valign="top" class="value"><g:link controller="funcaoMinisterial" action="show" id="${participanteInstance?.funcao?.id}">${participanteInstance?.funcao?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.tipoAdmissao.label" default="Tipo Admissao" /></td>
				
				<td valign="top" class="value">${participanteInstance?.tipoAdmissao?.encodeAsHTML()}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.igreja.label" default="Igreja" /></td>
				
				<td valign="top" class="value"><g:link controller="igreja" action="show" id="${participanteInstance?.igreja?.id}">${participanteInstance?.igreja?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.lider.label" default="Lider" /></td>
				
				<td valign="top" class="value"><g:link controller="participante" action="show" id="${participanteInstance?.lider?.id}">${participanteInstance?.lider?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.dependentes.label" default="Dependentes" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${participanteInstance.dependentes}" var="d">
						<li><g:link controller="participante" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.discipulos.label" default="Discipulos" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${participanteInstance.discipulos}" var="d">
						<li><g:link controller="participante" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.participaCelula.label" default="Participa Celula" /></td>
				
				<td valign="top" class="value"><g:link controller="celula" action="show" id="${participanteInstance?.participaCelula?.id}">${participanteInstance?.participaCelula?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="participante.lideraCelulas.label" default="Lidera Celulas" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${participanteInstance.lideraCelulas}" var="l">
						<li><g:link controller="celula" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
