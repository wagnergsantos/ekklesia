
<%@ page import="com.github.ekklesia.administracao.RedeMinisterial" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'redeMinisterial.label', default: 'RedeMinisterial')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-redeMinisterial" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="nome" title="${message(code: 'redeMinisterial.nome.label', default: 'Nome')}" />
			
				<th><g:message code="redeMinisterial.lider.label" default="Lider" /></th>
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${redeMinisterialInstanceList}" status="i" var="redeMinisterialInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${redeMinisterialInstance.id}">${fieldValue(bean: redeMinisterialInstance, field: "nome")}</g:link></td>
			
				<td>${fieldValue(bean: redeMinisterialInstance, field: "lider")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${redeMinisterialInstanceTotal}" />
	</div>
</section>

</body>

</html>
