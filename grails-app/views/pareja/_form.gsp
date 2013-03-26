<%@ page import="com.diadelaregion.Pareja" %>



			<div class="control-group fieldcontain ${hasErrors(bean: parejaInstance, field: 'nombreMarido', 'error')} ">
				<label for="nombreMarido" class="control-label"><g:message code="pareja.nombreMarido.label" default="Nombre Marido" /></label>
				<div class="controls">
					<g:textField name="nombreMarido" maxlength="50" value="${parejaInstance?.nombreMarido}"/>
					<span class="help-inline">${hasErrors(bean: parejaInstance, field: 'nombreMarido', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: parejaInstance, field: 'apellidosMarido', 'error')} ">
				<label for="apellidosMarido" class="control-label"><g:message code="pareja.apellidosMarido.label" default="Apellidos Marido" /></label>
				<div class="controls">
					<g:textField name="apellidosMarido" maxlength="100" value="${parejaInstance?.apellidosMarido}"/>
					<span class="help-inline">${hasErrors(bean: parejaInstance, field: 'apellidosMarido', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: parejaInstance, field: 'nombreMujer', 'error')} ">
				<label for="nombreMujer" class="control-label"><g:message code="pareja.nombreMujer.label" default="Nombre Mujer" /></label>
				<div class="controls">
					<g:textField name="nombreMujer" maxlength="50" value="${parejaInstance?.nombreMujer}"/>
					<span class="help-inline">${hasErrors(bean: parejaInstance, field: 'nombreMujer', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: parejaInstance, field: 'apellidosMujer', 'error')} ">
				<label for="apellidosMujer" class="control-label"><g:message code="pareja.apellidosMujer.label" default="Apellidos Mujer" /></label>
				<div class="controls">
					<g:textField name="apellidosMujer" maxlength="100" value="${parejaInstance?.apellidosMujer}"/>
					<span class="help-inline">${hasErrors(bean: parejaInstance, field: 'apellidosMujer', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: parejaInstance, field: 'email', 'error')} ">
				<label for="email" class="control-label"><g:message code="pareja.email.label" default="Email" /></label>
				<div class="controls">
					<g:field type="email" name="email" value="${parejaInstance?.email}"/>
					<span class="help-inline">${hasErrors(bean: parejaInstance, field: 'email', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: parejaInstance, field: 'numeroDeNiños', 'error')} required">
				<label for="numeroDeNiños" class="control-label"><g:message code="pareja.numeroDeNiños.label" default="Numero De Niños" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="numeroDeNiños" required="" value="${parejaInstance.numeroDeNiños}"/>
					<span class="help-inline">${hasErrors(bean: parejaInstance, field: 'numeroDeNiños', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: parejaInstance, field: 'edadesDeLosNiños', 'error')} ">
				<label for="edadesDeLosNiños" class="control-label"><g:message code="pareja.edadesDeLosNiños.label" default="Edades De Los Niños" /></label>
				<div class="controls">
					<g:textField name="edadesDeLosNiños" value="${parejaInstance?.edadesDeLosNiños}"/>
					<span class="help-inline">${hasErrors(bean: parejaInstance, field: 'edadesDeLosNiños', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: parejaInstance, field: 'equipo', 'error')} required">
				<label for="equipo" class="control-label"><g:message code="pareja.equipo.label" default="Equipo" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="equipo" required="" value="${parejaInstance.equipo}"/>
					<span class="help-inline">${hasErrors(bean: parejaInstance, field: 'equipo', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: parejaInstance, field: 'sector', 'error')} ">
				<label for="sector" class="control-label"><g:message code="pareja.sector.label" default="Sector" /></label>
				<div class="controls">
					<g:select name="sector" from="${parejaInstance.constraints.sector.inList}" value="${parejaInstance?.sector}" valueMessagePrefix="pareja.sector" noSelection="['': '']"/>
					<span class="help-inline">${hasErrors(bean: parejaInstance, field: 'sector', 'error')}</span>
				</div>
			</div>

