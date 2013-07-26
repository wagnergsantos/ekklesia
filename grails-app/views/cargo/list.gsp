
<%@ page import="com.github.ekklesia.administracao.Cargo" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'cargo.label', default: 'Cargo')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-cargo" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="nome" title="${message(code: 'cargo.nome.label', default: 'Nome')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${cargoInstanceList}" status="i" var="cargoInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${cargoInstance.id}">${fieldValue(bean: cargoInstance, field: "nome")}</g:link></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${cargoInstanceTotal}" />
	</div>
</section>

</body>

</html>
