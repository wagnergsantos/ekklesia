<%@ page import="com.github.ekklesia.secretaria.Igreja" %>



			<div class="control-group fieldcontain ${hasErrors(bean: igrejaInstance, field: 'logo', 'error')} required">
				<label for="logo" class="control-label"><g:message code="igreja.logo.label" default="Logo" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<input type="file" id="logo" name="logo" />
					<span class="help-inline">${hasErrors(bean: igrejaInstance, field: 'logo', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: igrejaInstance, field: 'nome', 'error')} required">
				<label for="nome" class="control-label"><g:message code="igreja.nome.label" default="Nome" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="nome" required="" value="${igrejaInstance?.nome}"/>
					<span class="help-inline">${hasErrors(bean: igrejaInstance, field: 'nome', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: igrejaInstance, field: 'nomeFantasia', 'error')} required">
				<label for="nomeFantasia" class="control-label"><g:message code="igreja.nomeFantasia.label" default="Nome Fantasia" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="nomeFantasia" required="" value="${igrejaInstance?.nomeFantasia}"/>
					<span class="help-inline">${hasErrors(bean: igrejaInstance, field: 'nomeFantasia', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: igrejaInstance, field: 'cnpj', 'error')} ">
				<label for="cnpj" class="control-label"><g:message code="igreja.cnpj.label" default="Cnpj" /></label>
				<div class="controls">
					<g:textField name="cnpj" value="${igrejaInstance?.cnpj}"/>
					<span class="help-inline">${hasErrors(bean: igrejaInstance, field: 'cnpj', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: igrejaInstance, field: 'dataFundacao', 'error')} required">
				<label for="dataFundacao" class="control-label"><g:message code="igreja.dataFundacao.label" default="Data Fundacao" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="dataFundacao" precision="day"  value="${igrejaInstance?.dataFundacao}"  />
					<span class="help-inline">${hasErrors(bean: igrejaInstance, field: 'dataFundacao', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: igrejaInstance, field: 'endereco', 'error')} required">
				<label for="endereco" class="control-label"><g:message code="igreja.endereco.label" default="Endereco" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="endereco" required="" value="${igrejaInstance?.endereco}"/>
					<span class="help-inline">${hasErrors(bean: igrejaInstance, field: 'endereco', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: igrejaInstance, field: 'cidade', 'error')} ">
				<label for="cidade" class="control-label"><g:message code="igreja.cidade.label" default="Cidade" /></label>
				<div class="controls">
					<g:textField name="cidade" value="${igrejaInstance?.cidade}"/>
					<span class="help-inline">${hasErrors(bean: igrejaInstance, field: 'cidade', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: igrejaInstance, field: 'bairro', 'error')} ">
				<label for="bairro" class="control-label"><g:message code="igreja.bairro.label" default="Bairro" /></label>
				<div class="controls">
					<g:textField name="bairro" value="${igrejaInstance?.bairro}"/>
					<span class="help-inline">${hasErrors(bean: igrejaInstance, field: 'bairro', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: igrejaInstance, field: 'cep', 'error')} ">
				<label for="cep" class="control-label"><g:message code="igreja.cep.label" default="Cep" /></label>
				<div class="controls">
					<g:textField name="cep" value="${igrejaInstance?.cep}"/>
					<span class="help-inline">${hasErrors(bean: igrejaInstance, field: 'cep', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: igrejaInstance, field: 'uf', 'error')} ">
				<label for="uf" class="control-label"><g:message code="igreja.uf.label" default="Uf" /></label>
				<div class="controls">
					<g:textField name="uf" value="${igrejaInstance?.uf}"/>
					<span class="help-inline">${hasErrors(bean: igrejaInstance, field: 'uf', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: igrejaInstance, field: 'email', 'error')} ">
				<label for="email" class="control-label"><g:message code="igreja.email.label" default="Email" /></label>
				<div class="controls">
					<g:field type="email" name="email" value="${igrejaInstance?.email}"/>
					<span class="help-inline">${hasErrors(bean: igrejaInstance, field: 'email', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: igrejaInstance, field: 'telefone', 'error')} ">
				<label for="telefone" class="control-label"><g:message code="igreja.telefone.label" default="Telefone" /></label>
				<div class="controls">
					<g:textField name="telefone" value="${igrejaInstance?.telefone}"/>
					<span class="help-inline">${hasErrors(bean: igrejaInstance, field: 'telefone', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: igrejaInstance, field: 'site', 'error')} ">
				<label for="site" class="control-label"><g:message code="igreja.site.label" default="Site" /></label>
				<div class="controls">
					<g:textField name="site" value="${igrejaInstance?.site}"/>
					<span class="help-inline">${hasErrors(bean: igrejaInstance, field: 'site', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: igrejaInstance, field: 'matriz', 'error')} ">
				<label for="matriz" class="control-label"><g:message code="igreja.matriz.label" default="Matriz" /></label>
				<div class="controls">
					<g:select id="matriz" name="matriz.id" from="${com.github.ekklesia.secretaria.Igreja.list()}" optionKey="id" value="${igrejaInstance?.matriz?.id}" class="many-to-one" noSelection="['null': '']"/>
					<span class="help-inline">${hasErrors(bean: igrejaInstance, field: 'matriz', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: igrejaInstance, field: 'lider', 'error')} ">
				<label for="lider" class="control-label"><g:message code="igreja.lider.label" default="Lider" /></label>
				<div class="controls">
					<g:select id="lider" name="lider.id" from="${com.github.ekklesia.secretaria.Participante.list()}" optionKey="id" value="${igrejaInstance?.lider?.id}" class="many-to-one" noSelection="['null': '']"/>
					<span class="help-inline">${hasErrors(bean: igrejaInstance, field: 'lider', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: igrejaInstance, field: 'filiais', 'error')} ">
				<label for="filiais" class="control-label"><g:message code="igreja.filiais.label" default="Filiais" /></label>
				<div class="controls">
					
<ul class="one-to-many">
<g:each in="${igrejaInstance?.filiais?}" var="f">
    <li><g:link controller="igreja" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="igreja" action="create" params="['igreja.id': igrejaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'igreja.label', default: 'Igreja')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: igrejaInstance, field: 'filiais', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: igrejaInstance, field: 'participantes', 'error')} ">
				<label for="participantes" class="control-label"><g:message code="igreja.participantes.label" default="Participantes" /></label>
				<div class="controls">
					
<ul class="one-to-many">
<g:each in="${igrejaInstance?.participantes?}" var="p">
    <li><g:link controller="participante" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="participante" action="create" params="['igreja.id': igrejaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'participante.label', default: 'Participante')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: igrejaInstance, field: 'participantes', 'error')}</span>
				</div>
			</div>

