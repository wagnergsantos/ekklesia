
<%@ page import="com.github.ekklesia.secretaria.Participante" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'participante.label', default: 'Participante')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-participante" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="foto" title="${message(code: 'participante.foto.label', default: 'Foto')}" />
			
				<g:sortableColumn property="nome" title="${message(code: 'participante.nome.label', default: 'Nome')}" />
			
				<g:sortableColumn property="cpf" title="${message(code: 'participante.cpf.label', default: 'Cpf')}" />
			
				<g:sortableColumn property="rg" title="${message(code: 'participante.rg.label', default: 'Rg')}" />
			
				<g:sortableColumn property="sexo" title="${message(code: 'participante.sexo.label', default: 'Sexo')}" />
			
				<g:sortableColumn property="dataNascimento" title="${message(code: 'participante.dataNascimento.label', default: 'Data Nascimento')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${participanteInstanceList}" status="i" var="participanteInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${participanteInstance.id}">${fieldValue(bean: participanteInstance, field: "foto")}</g:link></td>
			
				<td>${fieldValue(bean: participanteInstance, field: "nome")}</td>
			
				<td>${fieldValue(bean: participanteInstance, field: "cpf")}</td>
			
				<td>${fieldValue(bean: participanteInstance, field: "rg")}</td>
			
				<td>${fieldValue(bean: participanteInstance, field: "sexo")}</td>
			
				<td><g:formatDate date="${participanteInstance.dataNascimento}" /></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${participanteInstanceTotal}" />
	</div>
</section>

</body>

</html>
