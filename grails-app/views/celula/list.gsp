
<%@ page import="com.github.ekklesia.secretaria.Celula" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'celula.label', default: 'Celula')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-celula" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="nome" title="${message(code: 'celula.nome.label', default: 'Nome')}" />
			
				<g:sortableColumn property="tipo" title="${message(code: 'celula.tipo.label', default: 'Tipo')}" />
			
				<g:sortableColumn property="dataCriacao" title="${message(code: 'celula.dataCriacao.label', default: 'Data Criacao')}" />
			
				<g:sortableColumn property="horario" title="${message(code: 'celula.horario.label', default: 'Horario')}" />
			
				<g:sortableColumn property="diaSemana" title="${message(code: 'celula.diaSemana.label', default: 'Dia Semana')}" />
			
				<g:sortableColumn property="endereco" title="${message(code: 'celula.endereco.label', default: 'Endereco')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${celulaInstanceList}" status="i" var="celulaInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${celulaInstance.id}">${fieldValue(bean: celulaInstance, field: "nome")}</g:link></td>
			
				<td>${fieldValue(bean: celulaInstance, field: "tipo")}</td>
			
				<td><g:formatDate date="${celulaInstance.dataCriacao}" /></td>
			
				<td><g:formatDate date="${celulaInstance.horario}" /></td>
			
				<td>${fieldValue(bean: celulaInstance, field: "diaSemana")}</td>
			
				<td>${fieldValue(bean: celulaInstance, field: "endereco")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${celulaInstanceTotal}" />
	</div>
</section>

</body>

</html>
