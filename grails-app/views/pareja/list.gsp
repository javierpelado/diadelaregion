
<%@ page import="com.diadelaregion.Pareja" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pareja.label', default: 'Pareja')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-pareja" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-pareja" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nombreMarido" title="${message(code: 'pareja.nombreMarido.label', default: 'Nombre Marido')}" />
					
						<g:sortableColumn property="apellidosMarido" title="${message(code: 'pareja.apellidosMarido.label', default: 'Apellidos Marido')}" />
					
						<g:sortableColumn property="nombreMujer" title="${message(code: 'pareja.nombreMujer.label', default: 'Nombre Mujer')}" />
					
						<g:sortableColumn property="apellidosMujer" title="${message(code: 'pareja.apellidosMujer.label', default: 'Apellidos Mujer')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'pareja.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="numeroDeNiños" title="${message(code: 'pareja.numeroDeNiños.label', default: 'Numero De Niños')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${parejaInstanceList}" status="i" var="parejaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${parejaInstance.id}">${fieldValue(bean: parejaInstance, field: "nombreMarido")}</g:link></td>
					
						<td>${fieldValue(bean: parejaInstance, field: "apellidosMarido")}</td>
					
						<td>${fieldValue(bean: parejaInstance, field: "nombreMujer")}</td>
					
						<td>${fieldValue(bean: parejaInstance, field: "apellidosMujer")}</td>
					
						<td>${fieldValue(bean: parejaInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: parejaInstance, field: "numeroDeNiños")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${parejaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
