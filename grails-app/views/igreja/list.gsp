
<%@ page import="com.github.ekklesia.secretaria.Igreja" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'igreja.label', default: 'Igreja')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-igreja" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="logo" title="${message(code: 'igreja.logo.label', default: 'Logo')}" />
			
				<g:sortableColumn property="nome" title="${message(code: 'igreja.nome.label', default: 'Nome')}" />
			
				<g:sortableColumn property="nomeFantasia" title="${message(code: 'igreja.nomeFantasia.label', default: 'Nome Fantasia')}" />
			
				<g:sortableColumn property="cnpj" title="${message(code: 'igreja.cnpj.label', default: 'Cnpj')}" />
			
				<g:sortableColumn property="dataFundacao" title="${message(code: 'igreja.dataFundacao.label', default: 'Data Fundacao')}" />
			
				<g:sortableColumn property="endereco" title="${message(code: 'igreja.endereco.label', default: 'Endereco')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${igrejaInstanceList}" status="i" var="igrejaInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${igrejaInstance.id}">${fieldValue(bean: igrejaInstance, field: "logo")}</g:link></td>
			
				<td>${fieldValue(bean: igrejaInstance, field: "nome")}</td>
			
				<td>${fieldValue(bean: igrejaInstance, field: "nomeFantasia")}</td>
			
				<td>${fieldValue(bean: igrejaInstance, field: "cnpj")}</td>
			
				<td><g:formatDate date="${igrejaInstance.dataFundacao}" /></td>
			
				<td>${fieldValue(bean: igrejaInstance, field: "endereco")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${igrejaInstanceTotal}" />
	</div>
</section>

</body>

</html>
