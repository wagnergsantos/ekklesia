<%@ page import="com.github.ekklesia.administracao.RedeMinisterial" %>



			<div class="control-group fieldcontain ${hasErrors(bean: redeMinisterialInstance, field: 'nome', 'error')} required">
				<label for="nome" class="control-label"><g:message code="redeMinisterial.nome.label" default="Nome" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="nome" required="" value="${redeMinisterialInstance?.nome}"/>
					<span class="help-inline">${hasErrors(bean: redeMinisterialInstance, field: 'nome', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: redeMinisterialInstance, field: 'lider', 'error')} ">
				<label for="lider" class="control-label"><g:message code="redeMinisterial.lider.label" default="Lider" /></label>
				<div class="controls">
					<g:select id="lider" name="lider.id" from="${com.github.ekklesia.secretaria.Participante.list()}" optionKey="id" value="${redeMinisterialInstance?.lider?.id}" class="many-to-one" noSelection="['null': '']"/>
					<span class="help-inline">${hasErrors(bean: redeMinisterialInstance, field: 'lider', 'error')}</span>
				</div>
			</div>

