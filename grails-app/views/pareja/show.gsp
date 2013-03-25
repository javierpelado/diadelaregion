
<%@ page import="com.diadelaregion.Pareja" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pareja.label', default: 'Pareja')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-pareja" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-pareja" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list pareja">
			
				<g:if test="${parejaInstance?.nombreMarido}">
				<li class="fieldcontain">
					<span id="nombreMarido-label" class="property-label"><g:message code="pareja.nombreMarido.label" default="Nombre Marido" /></span>
					
						<span class="property-value" aria-labelledby="nombreMarido-label"><g:fieldValue bean="${parejaInstance}" field="nombreMarido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parejaInstance?.apellidosMarido}">
				<li class="fieldcontain">
					<span id="apellidosMarido-label" class="property-label"><g:message code="pareja.apellidosMarido.label" default="Apellidos Marido" /></span>
					
						<span class="property-value" aria-labelledby="apellidosMarido-label"><g:fieldValue bean="${parejaInstance}" field="apellidosMarido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parejaInstance?.nombreMujer}">
				<li class="fieldcontain">
					<span id="nombreMujer-label" class="property-label"><g:message code="pareja.nombreMujer.label" default="Nombre Mujer" /></span>
					
						<span class="property-value" aria-labelledby="nombreMujer-label"><g:fieldValue bean="${parejaInstance}" field="nombreMujer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parejaInstance?.apellidosMujer}">
				<li class="fieldcontain">
					<span id="apellidosMujer-label" class="property-label"><g:message code="pareja.apellidosMujer.label" default="Apellidos Mujer" /></span>
					
						<span class="property-value" aria-labelledby="apellidosMujer-label"><g:fieldValue bean="${parejaInstance}" field="apellidosMujer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parejaInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="pareja.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${parejaInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parejaInstance?.numeroDeNiños}">
				<li class="fieldcontain">
					<span id="numeroDeNiños-label" class="property-label"><g:message code="pareja.numeroDeNiños.label" default="Numero De Niños" /></span>
					
						<span class="property-value" aria-labelledby="numeroDeNiños-label"><g:fieldValue bean="${parejaInstance}" field="numeroDeNiños"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parejaInstance?.equipo}">
				<li class="fieldcontain">
					<span id="equipo-label" class="property-label"><g:message code="pareja.equipo.label" default="Equipo" /></span>
					
						<span class="property-value" aria-labelledby="equipo-label"><g:fieldValue bean="${parejaInstance}" field="equipo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parejaInstance?.sector}">
				<li class="fieldcontain">
					<span id="sector-label" class="property-label"><g:message code="pareja.sector.label" default="Sector" /></span>
					
						<span class="property-value" aria-labelledby="sector-label"><g:fieldValue bean="${parejaInstance}" field="sector"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parejaInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="pareja.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${parejaInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${parejaInstance?.id}" />
					<g:link class="edit" action="edit" id="${parejaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
