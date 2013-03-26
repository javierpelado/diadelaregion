
<%@ page import="com.diadelaregion.Pareja" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'pareja.label', default: 'Pareja')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-pareja" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="pareja.nombreMarido.label" default="Nombre Marido" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: parejaInstance, field: "nombreMarido")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="pareja.apellidosMarido.label" default="Apellidos Marido" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: parejaInstance, field: "apellidosMarido")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="pareja.nombreMujer.label" default="Nombre Mujer" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: parejaInstance, field: "nombreMujer")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="pareja.apellidosMujer.label" default="Apellidos Mujer" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: parejaInstance, field: "apellidosMujer")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="pareja.email.label" default="Email" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: parejaInstance, field: "email")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="pareja.numeroDeNiños.label" default="Numero De Niños" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: parejaInstance, field: "numeroDeNiños")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="pareja.edadesDeLosNiños.label" default="Edades De Los Niños" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: parejaInstance, field: "edadesDeLosNiños")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="pareja.equipo.label" default="Equipo" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: parejaInstance, field: "equipo")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="pareja.sector.label" default="Sector" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: parejaInstance, field: "sector")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="pareja.dateCreated.label" default="Date Created" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${parejaInstance?.dateCreated}" /></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
