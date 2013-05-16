
<%@ page import="com.progoti.security.Authority" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'authority.label', default: 'Authority')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-authority" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(controller: "home")}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-authority" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list authority">
			
				<g:if test="${authorityInstance?.roleTitle}">
				<li class="fieldcontain">
					<span id="roleTitle-label" class="property-label"><g:message code="authority.roleTitle.label" default="Role Title" /></span>
					
						<span class="property-value" aria-labelledby="roleTitle-label"><g:fieldValue bean="${authorityInstance}" field="roleTitle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${authorityInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="authority.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${authorityInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${authorityInstance?.features}">
				<li class="fieldcontain">
					<span id="features-label" class="property-label"><g:message code="authority.features.label" default="Features" /></span>
					
						<g:each in="${authorityInstance.features}" var="f">
						<span class="property-value" aria-labelledby="features-label"><g:link controller="feature" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${authorityInstance?.userGroups}">
				<li class="fieldcontain">
					<span id="userGroups-label" class="property-label"><g:message code="authority.userGroups.label" default="User Groups" /></span>
					
						<g:each in="${authorityInstance.userGroups}" var="u">
						<span class="property-value" aria-labelledby="userGroups-label"><g:link controller="userGroup" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${authorityInstance?.users}">
				<li class="fieldcontain">
					<span id="users-label" class="property-label"><g:message code="authority.users.label" default="Users" /></span>
					
						<g:each in="${authorityInstance.users}" var="u">
						<span class="property-value" aria-labelledby="users-label"><g:link controller="user" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${authorityInstance?.id}" />
					<g:link class="edit" action="edit" id="${authorityInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
