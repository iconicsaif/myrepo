
<%@ page import="com.progoti.security.Country" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'country.label', default: 'Country')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-country" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(controller: "home")}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-country" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="code" title="${message(code: 'country.code.label', default: 'Code')}" />
					
						<g:sortableColumn property="shortCode" title="${message(code: 'country.shortCode.label', default: 'Short Code')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'country.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="isdDialingCode" title="${message(code: 'country.isdDialingCode.label', default: 'Isd Dialing Code')}" />
					
						<g:sortableColumn property="isActive" title="${message(code: 'country.isActive.label', default: 'Is Active')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${countryInstanceList}" status="i" var="countryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${countryInstance.id}">${fieldValue(bean: countryInstance, field: "code")}</g:link></td>
					
						<td>${fieldValue(bean: countryInstance, field: "shortCode")}</td>
					
						<td>${fieldValue(bean: countryInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: countryInstance, field: "isdDialingCode")}</td>
					
						<td><g:formatBoolean boolean="${countryInstance.isActive}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${countryInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
