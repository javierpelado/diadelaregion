
<%@ page import="com.diadelaregion.Pareja" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'pareja.label', default: 'Pareja')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-pareja" class="first">
	<export:formats />

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="sector" title="${message(code: 'pareja.marido.sectorYEquipo', default: 'Sector - Equipo')}" />

				<g:sortableColumn property="nombreMarido" title="${message(code: 'pareja.marido.label', default: 'Marido')}" />
			
				<g:sortableColumn property="nombreMujer" title="${message(code: 'pareja.mujer.label', default: 'Mujer')}" />
			
				<g:sortableColumn property="email" title="${message(code: 'pareja.email.label', default: 'Email')}" />
						
			</tr>
		</thead>
		<tbody>
		<g:each in="${parejaInstanceList}" status="i" var="parejaInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${parejaInstance.id}">${fieldValue(bean: parejaInstance, field: "sector")} - Equipo ${fieldValue(bean: parejaInstance, field: "equipo")}</g:link></td>

				<td>${fieldValue(bean: parejaInstance, field: "nombreMarido")} ${fieldValue(bean: parejaInstance, field: "apellidosMarido")}</td>
			
				<td>${fieldValue(bean: parejaInstance, field: "nombreMujer")} ${fieldValue(bean: parejaInstance, field: "apellidosMujer")}</td>
			
				<td>${fieldValue(bean: parejaInstance, field: "email")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${parejaInstanceTotal}" />
	</div>
</section>

</body>

</html>
