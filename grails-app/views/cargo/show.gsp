
<%@ page import="com.github.ekklesia.administracao.Cargo" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'cargo.label', default: 'Cargo')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-cargo" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="cargo.nome.label" default="Nome" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: cargoInstance, field: "nome")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
