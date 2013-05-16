
<%@ page import="com.progoti.security.Identification" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'identification.label', default: 'Identification')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-identification" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(controller: "home")}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-identification" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list identification">
			
				<g:if test="${identificationInstance?.passport}">
				<li class="fieldcontain">
					<span id="passport-label" class="property-label"><g:message code="identification.passport.label" default="Passport" /></span>
					
						<span class="property-value" aria-labelledby="passport-label"><g:link controller="passport" action="show" id="${identificationInstance?.passport?.id}">${identificationInstance?.passport?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${identificationInstance?.drivingLicense}">
				<li class="fieldcontain">
					<span id="drivingLicense-label" class="property-label"><g:message code="identification.drivingLicense.label" default="Driving License" /></span>
					
						<span class="property-value" aria-labelledby="drivingLicense-label"><g:link controller="drivingLicense" action="show" id="${identificationInstance?.drivingLicense?.id}">${identificationInstance?.drivingLicense?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${identificationInstance?.nationalIdentificationNumber}">
				<li class="fieldcontain">
					<span id="nationalIdentificationNumber-label" class="property-label"><g:message code="identification.nationalIdentificationNumber.label" default="National Identification Number" /></span>
					
						<span class="property-value" aria-labelledby="nationalIdentificationNumber-label"><g:fieldValue bean="${identificationInstance}" field="nationalIdentificationNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${identificationInstance?.userProfile}">
				<li class="fieldcontain">
					<span id="userProfile-label" class="property-label"><g:message code="identification.userProfile.label" default="User Profile" /></span>
					
						<span class="property-value" aria-labelledby="userProfile-label"><g:link controller="userProfile" action="show" id="${identificationInstance?.userProfile?.id}">${identificationInstance?.userProfile?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${identificationInstance?.id}" />
					<g:link class="edit" action="edit" id="${identificationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
