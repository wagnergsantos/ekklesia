<%@ page import="com.github.ekklesia.secretaria.Participante" %>



			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'foto', 'error')} required">
				<label for="foto" class="control-label"><g:message code="participante.foto.label" default="Foto" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<input type="file" id="foto" name="foto" />
					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'foto', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'nome', 'error')} required">
				<label for="nome" class="control-label"><g:message code="participante.nome.label" default="Nome" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="nome" required="" value="${participanteInstance?.nome}"/>
					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'nome', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'cpf', 'error')} ">
				<label for="cpf" class="control-label"><g:message code="participante.cpf.label" default="Cpf" /></label>
				<div class="controls">
					<g:textField name="cpf" value="${participanteInstance?.cpf}"/>
					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'cpf', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'rg', 'error')} ">
				<label for="rg" class="control-label"><g:message code="participante.rg.label" default="Rg" /></label>
				<div class="controls">
					<g:textField name="rg" value="${participanteInstance?.rg}"/>
					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'rg', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'sexo', 'error')} required">
				<label for="sexo" class="control-label"><g:message code="participante.sexo.label" default="Sexo" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select name="sexo" from="${com.github.ekklesia.enuns.SexoEnum?.values()}" keys="${com.github.ekklesia.enuns.SexoEnum.values()*.name()}" required="" value="${participanteInstance?.sexo?.name()}"/>
					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'sexo', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'dataNascimento', 'error')} required">
				<label for="dataNascimento" class="control-label"><g:message code="participante.dataNascimento.label" default="Data Nascimento" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<div class="input-append date">
						<g:textField name="dataNascimento" id="dataNascimento" required="" value="${participanteInstance?.dataNascimento}" class="input-small" data-date-format="dd/MM/yyyy"/>
						<span class="add-on"><i class="icon-calendar"></i></span>
						<span class="help-inline">${hasErrors(bean: celulaInstance, field: 'dataNascimento', 'error')}</span>
						<script type="text/javascript">
							$('#dataNascimento').datepicker();
						</script>
					</div>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'dataConversao', 'error')} required">
				<label for="dataConversao" class="control-label"><g:message code="participante.dataConversao.label" default="Data Conversao" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<div class="input-append date">
						<g:textField name="dataConversao" id="dataConversao" required="" value="${participanteInstance?.dataConversao}" class="input-small" data-date-format="dd/MM/yyyy"/>
						<span class="add-on"><i class="icon-calendar"></i></span>
						<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'dataConversao', 'error')}</span>
						<script type="text/javascript">
							$('#dataConversao').datepicker();
						</script>
					</div>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'dataBatismo', 'error')} required">
				<label for="dataBatismo" class="control-label"><g:message code="participante.dataBatismo.label" default="Data Batismo" /><span class="required-indicator">*</span></label>
				<div class="controls">					
					<div class="input-append date">
						<g:textField name="dataBatismo" id="dataBatismo" required="" value="${participanteInstance?.dataBatismo}" class="input-small" data-date-format="dd/MM/yyyy"/>
						<span class="add-on"><i class="icon-calendar"></i></span>
						<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'dataBatismo', 'error')}</span>
						<script type="text/javascript">
							$('#dataBatismo').datepicker();
						</script>
					</div>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'naturalidade', 'error')} ">
				<label for="naturalidade" class="control-label"><g:message code="participante.naturalidade.label" default="Naturalidade" /></label>
				<div class="controls">
					<g:textField name="naturalidade" value="${participanteInstance?.naturalidade}"/>
					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'naturalidade', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'estadoCivil', 'error')} required">
				<label for="estadoCivil" class="control-label"><g:message code="participante.estadoCivil.label" default="Estado Civil" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select name="estadoCivil" from="${com.github.ekklesia.enuns.EstadoCivilEnum?.values()}" keys="${com.github.ekklesia.enuns.EstadoCivilEnum.values()*.name()}" required="" value="${participanteInstance?.estadoCivil?.name()}"/>
					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'estadoCivil', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'escolaridade', 'error')} required">
				<label for="escolaridade" class="control-label"><g:message code="participante.escolaridade.label" default="Escolaridade" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select name="escolaridade" from="${com.github.ekklesia.enuns.EscolaridadeEnum?.values()}" keys="${com.github.ekklesia.enuns.EscolaridadeEnum.values()*.name()}" required="" value="${participanteInstance?.escolaridade?.name()}"/>
					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'escolaridade', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'profissao', 'error')} ">
				<label for="profissao" class="control-label"><g:message code="participante.profissao.label" default="Profissao" /></label>
				<div class="controls">
					<g:textField name="profissao" value="${participanteInstance?.profissao}"/>
					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'profissao', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'endereco', 'error')} required">
				<label for="endereco" class="control-label"><g:message code="participante.endereco.label" default="Endereco" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="endereco" required="" value="${participanteInstance?.endereco}"/>
					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'endereco', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'cidade', 'error')} ">
				<label for="cidade" class="control-label"><g:message code="participante.cidade.label" default="Cidade" /></label>
				<div class="controls">
					<g:textField name="cidade" value="${participanteInstance?.cidade}"/>
					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'cidade', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'bairro', 'error')} ">
				<label for="bairro" class="control-label"><g:message code="participante.bairro.label" default="Bairro" /></label>
				<div class="controls">
					<g:textField name="bairro" value="${participanteInstance?.bairro}"/>
					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'bairro', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'cep', 'error')} ">
				<label for="cep" class="control-label"><g:message code="participante.cep.label" default="Cep" /></label>
				<div class="controls">
					<g:textField name="cep" value="${participanteInstance?.cep}"/>
					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'cep', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'uf', 'error')} ">
				<label for="uf" class="control-label"><g:message code="participante.uf.label" default="Uf" /></label>
				<div class="controls">
					<g:textField name="uf" value="${participanteInstance?.uf}"/>
					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'uf', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'email', 'error')} ">
				<label for="email" class="control-label"><g:message code="participante.email.label" default="Email" /></label>
				<div class="controls">
					<g:field type="email" name="email" value="${participanteInstance?.email}"/>
					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'email', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'site', 'error')} ">
				<label for="site" class="control-label"><g:message code="participante.site.label" default="Site" /></label>
				<div class="controls">
					<g:textField name="site" value="${participanteInstance?.site}"/>
					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'site', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'telResidencial', 'error')} ">
				<label for="telResidencial" class="control-label"><g:message code="participante.telResidencial.label" default="Tel Residencial" /></label>
				<div class="controls">
					<g:textField name="telResidencial" value="${participanteInstance?.telResidencial}"/>
					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'telResidencial', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'telComercial', 'error')} ">
				<label for="telComercial" class="control-label"><g:message code="participante.telComercial.label" default="Tel Comercial" /></label>
				<div class="controls">
					<g:textField name="telComercial" value="${participanteInstance?.telComercial}"/>
					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'telComercial', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'telCelular', 'error')} ">
				<label for="telCelular" class="control-label"><g:message code="participante.telCelular.label" default="Tel Celular" /></label>
				<div class="controls">
					<g:textField name="telCelular" value="${participanteInstance?.telCelular}"/>
					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'telCelular', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'professor', 'error')} ">
				<label for="professor" class="control-label"><g:message code="participante.professor.label" default="Professor" /></label>
				<div class="controls">
					<bs:checkBox name="professor" value="${participanteInstance?.professor}" />
					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'professor', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'situacao', 'error')} required">
				<label for="situacao" class="control-label"><g:message code="participante.situacao.label" default="Situacao" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select name="situacao" from="${com.github.ekklesia.enuns.SituacaoEnum?.values()}" keys="${com.github.ekklesia.enuns.SituacaoEnum.values()*.name()}" required="" value="${participanteInstance?.situacao?.name()}"/>
					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'situacao', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'rede', 'error')} ">
				<label for="rede" class="control-label"><g:message code="participante.rede.label" default="Rede" /></label>
				<div class="controls">
					<g:select id="rede" name="rede.id" from="${com.github.ekklesia.administracao.RedeMinisterial.list()}" optionKey="id" value="${participanteInstance?.rede?.id}" class="many-to-one" noSelection="['null': '']"/>
					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'rede', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'cargo', 'error')} ">
				<label for="cargo" class="control-label"><g:message code="participante.cargo.label" default="Cargo" /></label>
				<div class="controls">
					<g:select id="cargo" name="cargo.id" from="${com.github.ekklesia.administracao.Cargo.list()}" optionKey="id" value="${participanteInstance?.cargo?.id}" class="many-to-one" noSelection="['null': '']"/>
					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'cargo', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'funcao', 'error')} ">
				<label for="funcao" class="control-label"><g:message code="participante.funcao.label" default="Funcao" /></label>
				<div class="controls">
					<g:select id="funcao" name="funcao.id" from="${com.github.ekklesia.administracao.FuncaoMinisterial.list()}" optionKey="id" value="${participanteInstance?.funcao?.id}" class="many-to-one" noSelection="['null': '']"/>
					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'funcao', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'tipoAdmissao', 'error')} required">
				<label for="tipoAdmissao" class="control-label"><g:message code="participante.tipoAdmissao.label" default="Tipo Admissao" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select name="tipoAdmissao" from="${com.github.ekklesia.enuns.TipoAdmissaoEnum?.values()}" keys="${com.github.ekklesia.enuns.TipoAdmissaoEnum.values()*.name()}" required="" value="${participanteInstance?.tipoAdmissao?.name()}"/>
					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'tipoAdmissao', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'igreja', 'error')} required">
				<label for="igreja" class="control-label"><g:message code="participante.igreja.label" default="Igreja" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="igreja" name="igreja.id" from="${com.github.ekklesia.secretaria.Igreja.list()}" optionKey="id" required="" value="${participanteInstance?.igreja?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'igreja', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'lider', 'error')} ">
				<label for="lider" class="control-label"><g:message code="participante.lider.label" default="Lider" /></label>
				<div class="controls">
					<g:select id="lider" name="lider.id" from="${com.github.ekklesia.secretaria.Participante.list()}" optionKey="id" value="${participanteInstance?.lider?.id}" class="many-to-one" noSelection="['null': '']"/>
					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'lider', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'dependentes', 'error')} ">
				<label for="dependentes" class="control-label"><g:message code="participante.dependentes.label" default="Dependentes" /></label>
				<div class="controls">
					
<ul class="one-to-many">
<g:each in="${participanteInstance?.dependentes?}" var="d">
    <li><g:link controller="participante" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="participante" action="create" params="['participante.id': participanteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'participante.label', default: 'Participante')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'dependentes', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'discipulos', 'error')} ">
				<label for="discipulos" class="control-label"><g:message code="participante.discipulos.label" default="Discipulos" /></label>
				<div class="controls">
					
<ul class="one-to-many">
<g:each in="${participanteInstance?.discipulos?}" var="d">
    <li><g:link controller="participante" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="participante" action="create" params="['participante.id': participanteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'participante.label', default: 'Participante')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'discipulos', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'participaCelula', 'error')} ">
				<label for="participaCelula" class="control-label"><g:message code="participante.participaCelula.label" default="Participa Celula" /></label>
				<div class="controls">
					<g:select id="participaCelula" name="participaCelula.id" from="${com.github.ekklesia.secretaria.Celula.list()}" optionKey="id" value="${participanteInstance?.participaCelula?.id}" class="many-to-one" noSelection="['null': '']"/>
					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'participaCelula', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: participanteInstance, field: 'lideraCelulas', 'error')} ">
				<label for="lideraCelulas" class="control-label"><g:message code="participante.lideraCelulas.label" default="Lidera Celulas" /></label>
				<div class="controls">
					
<ul class="one-to-many">
<g:each in="${participanteInstance?.lideraCelulas?}" var="l">
    <li><g:link controller="celula" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="celula" action="create" params="['participante.id': participanteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'celula.label', default: 'Celula')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: participanteInstance, field: 'lideraCelulas', 'error')}</span>
				</div>
			</div>

