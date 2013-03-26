
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

	<table class="table table-bordered">
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
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
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
		<bs:paginate total="${parejaInstanceTotal}" />
	</div>
</section>

</body>

</html>
