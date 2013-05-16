
<%@ page import="com.progoti.security.DrivingLicense" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'drivingLicense.label', default: 'DrivingLicense')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-drivingLicense" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(controller: "home")}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-drivingLicense" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="drivingLicenseNumber" title="${message(code: 'drivingLicense.drivingLicenseNumber.label', default: 'Driving License Number')}" />
					
						<g:sortableColumn property="expiredDate" title="${message(code: 'drivingLicense.expiredDate.label', default: 'Expired Date')}" />
					
						<g:sortableColumn property="issueDate" title="${message(code: 'drivingLicense.issueDate.label', default: 'Issue Date')}" />
					
						<g:sortableColumn property="issueFrom" title="${message(code: 'drivingLicense.issueFrom.label', default: 'Issue From')}" />

                        <g:sortableColumn property="isActive" title="${message(code: 'drivingLicense.isActive.label', default: 'Is Active')}" />

                    </tr>
				</thead>
				<tbody>
				<g:each in="${drivingLicenseInstanceList}" status="i" var="drivingLicenseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${drivingLicenseInstance.id}">${fieldValue(bean: drivingLicenseInstance, field: "drivingLicenseNumber")}</g:link></td>
					
						<td><g:formatDate date="${drivingLicenseInstance.expiredDate}" /></td>
					
						<td><g:formatDate date="${drivingLicenseInstance.issueDate}" /></td>
					
						<td>${fieldValue(bean: drivingLicenseInstance, field: "issueFrom")}</td>

                        <td><g:formatBoolean boolean="${drivingLicenseInstance.isActive}" /></td>

                    </tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${drivingLicenseInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
