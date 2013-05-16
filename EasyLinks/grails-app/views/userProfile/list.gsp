
<%@ page import="com.progoti.security.UserProfile" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'userProfile.label', default: 'UserProfile')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-userProfile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(controller: "home")}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-userProfile" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="firstName" title="${message(code: 'userProfile.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="middleName" title="${message(code: 'userProfile.middleName.label', default: 'Middle Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'userProfile.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="nickName" title="${message(code: 'userProfile.nickName.label', default: 'Nick Name')}" />
					
						<g:sortableColumn property="imageUrl" title="${message(code: 'userProfile.imageUrl.label', default: 'Image Url')}" />
					
						<g:sortableColumn property="gender" title="${message(code: 'userProfile.gender.label', default: 'Gender')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userProfileInstanceList}" status="i" var="userProfileInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userProfileInstance.id}">${fieldValue(bean: userProfileInstance, field: "firstName")}</g:link></td>
					
						<td>${fieldValue(bean: userProfileInstance, field: "middleName")}</td>
					
						<td>${fieldValue(bean: userProfileInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: userProfileInstance, field: "nickName")}</td>
					
						<td>${fieldValue(bean: userProfileInstance, field: "imageUrl")}</td>
					
						<td>${fieldValue(bean: userProfileInstance, field: "gender")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userProfileInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
