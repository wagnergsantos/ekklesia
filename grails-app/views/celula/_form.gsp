<%@ page import="com.github.ekklesia.secretaria.Celula" %>



			<div class="control-group fieldcontain ${hasErrors(bean: celulaInstance, field: 'nome', 'error')} required">
				<label for="nome" class="control-label"><g:message code="celula.nome.label" default="Nome" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="nome" required="" value="${celulaInstance?.nome}"/>
					<span class="help-inline">${hasErrors(bean: celulaInstance, field: 'nome', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: celulaInstance, field: 'tipo', 'error')} required">
				<label for="tipo" class="control-label"><g:message code="celula.tipo.label" default="Tipo" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select name="tipo" from="${com.github.ekklesia.enuns.TipoCelulaEnum?.values()}" keys="${com.github.ekklesia.enuns.TipoCelulaEnum.values()*.name()}" required="" value="${celulaInstance?.tipo?.name()}"/>
					<span class="help-inline">${hasErrors(bean: celulaInstance, field: 'tipo', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: celulaInstance, field: 'dataCriacao', 'error')} required">
				<label for="dataCriacao" class="control-label"><g:message code="celula.dataCriacao.label" default="Data Criacao" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<div class="input-append date">
						<g:textField name="dataCriacao" required="" value="${celulaInstance?.dataCriacao}" class="input-small" id="datepicker1" data-date-format="dd/MM/yyyy"/>
						<span class="add-on"><i class="icon-calendar"></i></span>
						<span class="help-inline">${hasErrors(bean: celulaInstance, field: 'dataCriacao', 'error')}</span>
						<script type="text/javascript">
							$('#datepicker1').datepicker();
						</script>
					</div>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: celulaInstance, field: 'horario', 'error')} required">
				<label for="horario" class="control-label"><g:message code="celula.horario.label" default="Horario" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<div class="input-append bootstrap-timepicker">
						<g:textField name="horario" required="" value="${celulaInstance?.horario}" class="input-small" id="timepicker1"/>
						<span class="add-on"><i class="icon-time"></i></span>
						<script type="text/javascript">
							$('#timepicker1').timepicker({showMeridian: false, defaultTime: false});
						</script>
					</div>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: celulaInstance, field: 'diaSemana', 'error')} required">
				<label for="diaSemana" class="control-label"><g:message code="celula.diaSemana.label" default="Dia Semana" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="diaSemana" required="" value="${celulaInstance.diaSemana}"/>
					<span class="help-inline">${hasErrors(bean: celulaInstance, field: 'diaSemana', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: celulaInstance, field: 'endereco', 'error')} ">
				<label for="endereco" class="control-label"><g:message code="celula.endereco.label" default="Endereco" /></label>
				<div class="controls">
					<g:textField name="endereco" value="${celulaInstance?.endereco}"/>
					<span class="help-inline">${hasErrors(bean: celulaInstance, field: 'endereco', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: celulaInstance, field: 'cep', 'error')} ">
				<label for="cep" class="control-label"><g:message code="celula.cep.label" default="Cep" /></label>
				<div class="controls">
					<g:textField name="cep" value="${celulaInstance?.cep}"/>
					<span class="help-inline">${hasErrors(bean: celulaInstance, field: 'cep', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: celulaInstance, field: 'cidade', 'error')} ">
				<label for="cidade" class="control-label"><g:message code="celula.cidade.label" default="Cidade" /></label>
				<div class="controls">
					<g:textField name="cidade" value="${celulaInstance?.cidade}"/>
					<span class="help-inline">${hasErrors(bean: celulaInstance, field: 'cidade', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: celulaInstance, field: 'bairro', 'error')} ">
				<label for="bairro" class="control-label"><g:message code="celula.bairro.label" default="Bairro" /></label>
				<div class="controls">
					<g:textField name="bairro" value="${celulaInstance?.bairro}"/>
					<span class="help-inline">${hasErrors(bean: celulaInstance, field: 'bairro', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: celulaInstance, field: 'uf', 'error')} ">
				<label for="uf" class="control-label"><g:message code="celula.uf.label" default="Uf" /></label>
				<div class="controls">
					<g:textField name="uf" value="${celulaInstance?.uf}"/>
					<span class="help-inline">${hasErrors(bean: celulaInstance, field: 'uf', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: celulaInstance, field: 'lider', 'error')} required">
				<label for="lider" class="control-label"><g:message code="celula.lider.label" default="Lider" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="lider" name="lider.id" from="${com.github.ekklesia.secretaria.Participante.list()}" optionKey="id" required="" value="${celulaInstance?.lider?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: celulaInstance, field: 'lider', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: celulaInstance, field: 'colider', 'error')} required">
				<label for="colider" class="control-label"><g:message code="celula.colider.label" default="Colider" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="colider" name="colider.id" from="${com.github.ekklesia.secretaria.Participante.list()}" optionKey="id" required="" value="${celulaInstance?.colider?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: celulaInstance, field: 'colider', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: celulaInstance, field: 'anfitriao', 'error')} required">
				<label for="anfitriao" class="control-label"><g:message code="celula.anfitriao.label" default="Anfitriao" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="anfitriao" name="anfitriao.id" from="${com.github.ekklesia.secretaria.Participante.list()}" optionKey="id" required="" value="${celulaInstance?.anfitriao?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: celulaInstance, field: 'anfitriao', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: celulaInstance, field: 'igreja', 'error')} required">
				<label for="igreja" class="control-label"><g:message code="celula.igreja.label" default="Igreja" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="igreja" name="igreja.id" from="${com.github.ekklesia.secretaria.Igreja.list()}" optionKey="id" required="" value="${celulaInstance?.igreja?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: celulaInstance, field: 'igreja', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: celulaInstance, field: 'integrantes', 'error')} ">
				<label for="integrantes" class="control-label"><g:message code="celula.integrantes.label" default="Integrantes" /></label>
				<div class="controls">
					
<ul class="one-to-many">
<g:each in="${celulaInstance?.integrantes?}" var="i">
    <li><g:link controller="participante" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="participante" action="create" params="['celula.id': celulaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'participante.label', default: 'Participante')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: celulaInstance, field: 'integrantes', 'error')}</span>
				</div>
			</div>

