
<%@ page import="com.progoti.security.Bank" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bank.label', default: 'Bank')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-bank" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(controller: "home")}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-bank" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="fullName" title="${message(code: 'bank.fullName.label', default: 'Full Name')}" />
					
						<g:sortableColumn property="isActive" title="${message(code: 'bank.isActive.label', default: 'Is Active')}" />
					
						<g:sortableColumn property="shortName" title="${message(code: 'bank.shortName.label', default: 'Short Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${bankInstanceList}" status="i" var="bankInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${bankInstance.id}">${fieldValue(bean: bankInstance, field: "fullName")}</g:link></td>
					
						<td><g:formatBoolean boolean="${bankInstance.isActive}" /></td>
					
						<td>${fieldValue(bean: bankInstance, field: "shortName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${bankInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
