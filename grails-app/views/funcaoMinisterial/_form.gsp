<%@ page import="com.github.ekklesia.administracao.FuncaoMinisterial" %>



			<div class="control-group fieldcontain ${hasErrors(bean: funcaoMinisterialInstance, field: 'nome', 'error')} required">
				<label for="nome" class="control-label"><g:message code="funcaoMinisterial.nome.label" default="Nome" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="nome" required="" value="${funcaoMinisterialInstance?.nome}"/>
					<span class="help-inline">${hasErrors(bean: funcaoMinisterialInstance, field: 'nome', 'error')}</span>
				</div>
			</div>

