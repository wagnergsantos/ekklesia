
<%@ page import="com.github.ekklesia.administracao.RedeMinisterial" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'redeMinisterial.label', default: 'RedeMinisterial')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-redeMinisterial" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="redeMinisterial.nome.label" default="Nome" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: redeMinisterialInstance, field: "nome")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="redeMinisterial.lider.label" default="Lider" /></td>
				
				<td valign="top" class="value"><g:link controller="participante" action="show" id="${redeMinisterialInstance?.lider?.id}">${redeMinisterialInstance?.lider?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
