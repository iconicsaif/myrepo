
<%@ page import="com.progoti.security.Passport" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'passport.label', default: 'Passport')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-passport" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(controller: "home")}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-passport" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="expiredDate" title="${message(code: 'passport.expiredDate.label', default: 'Expired Date')}" />
					
						<g:sortableColumn property="issueDate" title="${message(code: 'passport.issueDate.label', default: 'Issue Date')}" />
					
						<g:sortableColumn property="issueFrom" title="${message(code: 'passport.issueFrom.label', default: 'Issue From')}" />
					
						<g:sortableColumn property="passportNumber" title="${message(code: 'passport.passportNumber.label', default: 'Passport Number')}" />

                        <g:sortableColumn property="isActive" title="${message(code: 'passport.isActive.label', default: 'Is Active')}" />

                    </tr>
				</thead>
				<tbody>
				<g:each in="${passportInstanceList}" status="i" var="passportInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${passportInstance.id}">${fieldValue(bean: passportInstance, field: "expiredDate")}</g:link></td>
					
						<td><g:formatDate date="${passportInstance.issueDate}" /></td>
					
						<td>${fieldValue(bean: passportInstance, field: "issueFrom")}</td>
					
						<td>${fieldValue(bean: passportInstance, field: "passportNumber")}</td>

                        <td><g:formatBoolean boolean="${passportInstance.isActive}" /></td>

                    </tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${passportInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
