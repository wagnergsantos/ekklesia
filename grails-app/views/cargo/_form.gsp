<%@ page import="com.github.ekklesia.administracao.Cargo" %>



			<div class="control-group fieldcontain ${hasErrors(bean: cargoInstance, field: 'nome', 'error')} required">
				<label for="nome" class="control-label"><g:message code="cargo.nome.label" default="Nome" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="nome" required="" value="${cargoInstance?.nome}"/>
					<span class="help-inline">${hasErrors(bean: cargoInstance, field: 'nome', 'error')}</span>
				</div>
			</div>

