
<%@ page import="com.github.ekklesia.administracao.FuncaoMinisterial" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'funcaoMinisterial.label', default: 'FuncaoMinisterial')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-funcaoMinisterial" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="nome" title="${message(code: 'funcaoMinisterial.nome.label', default: 'Nome')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${funcaoMinisterialInstanceList}" status="i" var="funcaoMinisterialInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${funcaoMinisterialInstance.id}">${fieldValue(bean: funcaoMinisterialInstance, field: "nome")}</g:link></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${funcaoMinisterialInstanceTotal}" />
	</div>
</section>

</body>

</html>
