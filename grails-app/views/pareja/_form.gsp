<%@ page import="com.diadelaregion.Pareja" %>



<div class="fieldcontain ${hasErrors(bean: parejaInstance, field: 'nombreMarido', 'error')} ">
	<label for="nombreMarido">
		<g:message code="pareja.nombreMarido.label" default="Nombre Marido" />
		
	</label>
	<g:textField name="nombreMarido" maxlength="50" value="${parejaInstance?.nombreMarido}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: parejaInstance, field: 'apellidosMarido', 'error')} ">
	<label for="apellidosMarido">
		<g:message code="pareja.apellidosMarido.label" default="Apellidos Marido" />
		
	</label>
	<g:textField name="apellidosMarido" maxlength="100" value="${parejaInstance?.apellidosMarido}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: parejaInstance, field: 'nombreMujer', 'error')} ">
	<label for="nombreMujer">
		<g:message code="pareja.nombreMujer.label" default="Nombre Mujer" />
		
	</label>
	<g:textField name="nombreMujer" maxlength="50" value="${parejaInstance?.nombreMujer}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: parejaInstance, field: 'apellidosMujer', 'error')} ">
	<label for="apellidosMujer">
		<g:message code="pareja.apellidosMujer.label" default="Apellidos Mujer" />
		
	</label>
	<g:textField name="apellidosMujer" maxlength="100" value="${parejaInstance?.apellidosMujer}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: parejaInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="pareja.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${parejaInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: parejaInstance, field: 'numeroDeNiños', 'error')} ">
	<label for="numeroDeNiños">
		<g:message code="pareja.numeroDeNiños.label" default="Numero De Niños" />
		
	</label>
	<g:textField name="numeroDeNiños" value="${parejaInstance?.numeroDeNiños}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: parejaInstance, field: 'equipo', 'error')} required">
	<label for="equipo">
		<g:message code="pareja.equipo.label" default="Equipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="equipo" type="number" value="${parejaInstance.equipo}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: parejaInstance, field: 'sector', 'error')} ">
	<label for="sector">
		<g:message code="pareja.sector.label" default="Sector" />
		
	</label>
	<g:select name="sector" from="${parejaInstance.constraints.sector.inList}" value="${parejaInstance?.sector}" valueMessagePrefix="pareja.sector" noSelection="['': '']"/>
</div>

