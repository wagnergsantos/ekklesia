
<%@ page import="com.github.ekklesia.secretaria.Igreja" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'igreja.label', default: 'Igreja')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-igreja" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="igreja.logo.label" default="Logo" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="igreja.nome.label" default="Nome" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: igrejaInstance, field: "nome")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="igreja.nomeFantasia.label" default="Nome Fantasia" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: igrejaInstance, field: "nomeFantasia")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="igreja.cnpj.label" default="Cnpj" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: igrejaInstance, field: "cnpj")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="igreja.dataFundacao.label" default="Data Fundacao" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${igrejaInstance?.dataFundacao}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="igreja.endereco.label" default="Endereco" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: igrejaInstance, field: "endereco")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="igreja.cidade.label" default="Cidade" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: igrejaInstance, field: "cidade")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="igreja.bairro.label" default="Bairro" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: igrejaInstance, field: "bairro")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="igreja.cep.label" default="Cep" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: igrejaInstance, field: "cep")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="igreja.uf.label" default="Uf" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: igrejaInstance, field: "uf")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="igreja.email.label" default="Email" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: igrejaInstance, field: "email")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="igreja.telefone.label" default="Telefone" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: igrejaInstance, field: "telefone")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="igreja.site.label" default="Site" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: igrejaInstance, field: "site")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="igreja.matriz.label" default="Matriz" /></td>
				
				<td valign="top" class="value"><g:link controller="igreja" action="show" id="${igrejaInstance?.matriz?.id}">${igrejaInstance?.matriz?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="igreja.lider.label" default="Lider" /></td>
				
				<td valign="top" class="value"><g:link controller="participante" action="show" id="${igrejaInstance?.lider?.id}">${igrejaInstance?.lider?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="igreja.filiais.label" default="Filiais" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${igrejaInstance.filiais}" var="f">
						<li><g:link controller="igreja" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="igreja.participantes.label" default="Participantes" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${igrejaInstance.participantes}" var="p">
						<li><g:link controller="participante" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
