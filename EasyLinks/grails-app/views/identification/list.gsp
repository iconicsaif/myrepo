
<%@ page import="com.progoti.security.Identification" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'identification.label', default: 'Identification')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-identification" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(controller: "home")}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-identification" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="identification.passport.label" default="Passport" /></th>
					
						<th><g:message code="identification.drivingLicense.label" default="Driving License" /></th>
					
						<g:sortableColumn property="nationalIdentificationNumber" title="${message(code: 'identification.nationalIdentificationNumber.label', default: 'National Identification Number')}" />
					
						<th><g:message code="identification.userProfile.label" default="User Profile" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${identificationInstanceList}" status="i" var="identificationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${identificationInstance.id}">${fieldValue(bean: identificationInstance, field: "passport")}</g:link></td>
					
						<td>${fieldValue(bean: identificationInstance, field: "drivingLicense")}</td>
					
						<td>${fieldValue(bean: identificationInstance, field: "nationalIdentificationNumber")}</td>
					
						<td>${fieldValue(bean: identificationInstance, field: "userProfile")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${identificationInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
