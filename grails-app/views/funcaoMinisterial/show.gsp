
<%@ page import="com.github.ekklesia.administracao.FuncaoMinisterial" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'funcaoMinisterial.label', default: 'FuncaoMinisterial')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-funcaoMinisterial" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="funcaoMinisterial.nome.label" default="Nome" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: funcaoMinisterialInstance, field: "nome")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
