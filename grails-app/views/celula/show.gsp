
<%@ page import="com.github.ekklesia.secretaria.Celula" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'celula.label', default: 'Celula')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-celula" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="celula.nome.label" default="Nome" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: celulaInstance, field: "nome")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="celula.tipo.label" default="Tipo" /></td>
				
				<td valign="top" class="value">${celulaInstance?.tipo?.encodeAsHTML()}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="celula.dataCriacao.label" default="Data Criacao" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${celulaInstance?.dataCriacao}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="celula.horario.label" default="Horario" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${celulaInstance?.horario}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="celula.diaSemana.label" default="Dia Semana" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: celulaInstance, field: "diaSemana")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="celula.endereco.label" default="Endereco" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: celulaInstance, field: "endereco")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="celula.cep.label" default="Cep" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: celulaInstance, field: "cep")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="celula.cidade.label" default="Cidade" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: celulaInstance, field: "cidade")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="celula.bairro.label" default="Bairro" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: celulaInstance, field: "bairro")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="celula.uf.label" default="Uf" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: celulaInstance, field: "uf")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="celula.lider.label" default="Lider" /></td>
				
				<td valign="top" class="value"><g:link controller="participante" action="show" id="${celulaInstance?.lider?.id}">${celulaInstance?.lider?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="celula.colider.label" default="Colider" /></td>
				
				<td valign="top" class="value"><g:link controller="participante" action="show" id="${celulaInstance?.colider?.id}">${celulaInstance?.colider?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="celula.anfitriao.label" default="Anfitriao" /></td>
				
				<td valign="top" class="value"><g:link controller="participante" action="show" id="${celulaInstance?.anfitriao?.id}">${celulaInstance?.anfitriao?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="celula.igreja.label" default="Igreja" /></td>
				
				<td valign="top" class="value"><g:link controller="igreja" action="show" id="${celulaInstance?.igreja?.id}">${celulaInstance?.igreja?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="celula.integrantes.label" default="Integrantes" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${celulaInstance.integrantes}" var="i">
						<li><g:link controller="participante" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
