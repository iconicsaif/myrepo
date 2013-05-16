
<%@ page import="com.progoti.security.DrivingLicense" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'drivingLicense.label', default: 'DrivingLicense')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-drivingLicense" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(controller: "home")}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-drivingLicense" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list drivingLicense">
			
				<g:if test="${drivingLicenseInstance?.identification}">
				<li class="fieldcontain">
					<span id="identification-label" class="property-label"><g:message code="drivingLicense.identification.label" default="Identification" /></span>
					
						<span class="property-value" aria-labelledby="identification-label"><g:link controller="identification" action="show" id="${drivingLicenseInstance?.identification?.id}">${drivingLicenseInstance?.identification?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${drivingLicenseInstance?.drivingLicenseNumber}">
				<li class="fieldcontain">
					<span id="drivingLicenseNumber-label" class="property-label"><g:message code="drivingLicense.drivingLicenseNumber.label" default="Driving License Number" /></span>
					
						<span class="property-value" aria-labelledby="drivingLicenseNumber-label"><g:fieldValue bean="${drivingLicenseInstance}" field="drivingLicenseNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${drivingLicenseInstance?.expiredDate}">
				<li class="fieldcontain">
					<span id="expiredDate-label" class="property-label"><g:message code="drivingLicense.expiredDate.label" default="Expired Date" /></span>
					
						<span class="property-value" aria-labelledby="expiredDate-label"><g:formatDate date="${drivingLicenseInstance?.expiredDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${drivingLicenseInstance?.isActive}">
				<li class="fieldcontain">
					<span id="isActive-label" class="property-label"><g:message code="drivingLicense.isActive.label" default="Is Active" /></span>
					
						<span class="property-value" aria-labelledby="isActive-label"><g:formatBoolean boolean="${drivingLicenseInstance?.isActive}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${drivingLicenseInstance?.issueDate}">
				<li class="fieldcontain">
					<span id="issueDate-label" class="property-label"><g:message code="drivingLicense.issueDate.label" default="Issue Date" /></span>
					
						<span class="property-value" aria-labelledby="issueDate-label"><g:formatDate date="${drivingLicenseInstance?.issueDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${drivingLicenseInstance?.issueFrom}">
				<li class="fieldcontain">
					<span id="issueFrom-label" class="property-label"><g:message code="drivingLicense.issueFrom.label" default="Issue From" /></span>
					
						<span class="property-value" aria-labelledby="issueFrom-label"><g:fieldValue bean="${drivingLicenseInstance}" field="issueFrom"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${drivingLicenseInstance?.id}" />
					<g:link class="edit" action="edit" id="${drivingLicenseInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
