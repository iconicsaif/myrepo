
<%@ page import="com.progoti.security.Passport" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'passport.label', default: 'Passport')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-passport" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(controller: "home")}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-passport" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list passport">
			
				<g:if test="${passportInstance?.identification}">
				<li class="fieldcontain">
					<span id="identification-label" class="property-label"><g:message code="passport.identification.label" default="Identification" /></span>
					
						<span class="property-value" aria-labelledby="identification-label"><g:link controller="identification" action="show" id="${passportInstance?.identification?.id}">${passportInstance?.identification?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${passportInstance?.expiredDate}">
				<li class="fieldcontain">
					<span id="expiredDate-label" class="property-label"><g:message code="passport.expiredDate.label" default="Expired Date" /></span>
					
						<span class="property-value" aria-labelledby="expiredDate-label"><g:formatDate date="${passportInstance?.expiredDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${passportInstance?.isActive}">
				<li class="fieldcontain">
					<span id="isActive-label" class="property-label"><g:message code="passport.isActive.label" default="Is Active" /></span>
					
						<span class="property-value" aria-labelledby="isActive-label"><g:formatBoolean boolean="${passportInstance?.isActive}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${passportInstance?.issueDate}">
				<li class="fieldcontain">
					<span id="issueDate-label" class="property-label"><g:message code="passport.issueDate.label" default="Issue Date" /></span>
					
						<span class="property-value" aria-labelledby="issueDate-label"><g:formatDate date="${passportInstance?.issueDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${passportInstance?.issueFrom}">
				<li class="fieldcontain">
					<span id="issueFrom-label" class="property-label"><g:message code="passport.issueFrom.label" default="Issue From" /></span>
					
						<span class="property-value" aria-labelledby="issueFrom-label"><g:fieldValue bean="${passportInstance}" field="issueFrom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${passportInstance?.passportNumber}">
				<li class="fieldcontain">
					<span id="passportNumber-label" class="property-label"><g:message code="passport.passportNumber.label" default="Passport Number" /></span>
					
						<span class="property-value" aria-labelledby="passportNumber-label"><g:fieldValue bean="${passportInstance}" field="passportNumber"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${passportInstance?.id}" />
					<g:link class="edit" action="edit" id="${passportInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
