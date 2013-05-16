
<%@ page import="com.progoti.security.Address" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'address.label', default: 'Address')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-address" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(controller: "home")}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-address" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list address">
			
				<g:if test="${addressInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="address.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:link controller="country" action="show" id="${addressInstance?.country?.id}">${addressInstance?.country?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInstance?.extendedAddress}">
				<li class="fieldcontain">
					<span id="extendedAddress-label" class="property-label"><g:message code="address.extendedAddress.label" default="Extended Address" /></span>
					
						<span class="property-value" aria-labelledby="extendedAddress-label"><g:fieldValue bean="${addressInstance}" field="extendedAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInstance?.poBox}">
				<li class="fieldcontain">
					<span id="poBox-label" class="property-label"><g:message code="address.poBox.label" default="Po Box" /></span>
					
						<span class="property-value" aria-labelledby="poBox-label"><g:fieldValue bean="${addressInstance}" field="poBox"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInstance?.postalCode}">
				<li class="fieldcontain">
					<span id="postalCode-label" class="property-label"><g:message code="address.postalCode.label" default="Postal Code" /></span>
					
						<span class="property-value" aria-labelledby="postalCode-label"><g:fieldValue bean="${addressInstance}" field="postalCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInstance?.region}">
				<li class="fieldcontain">
					<span id="region-label" class="property-label"><g:message code="address.region.label" default="Region" /></span>
					
						<span class="property-value" aria-labelledby="region-label"><g:fieldValue bean="${addressInstance}" field="region"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInstance?.streetAddress}">
				<li class="fieldcontain">
					<span id="streetAddress-label" class="property-label"><g:message code="address.streetAddress.label" default="Street Address" /></span>
					
						<span class="property-value" aria-labelledby="streetAddress-label"><g:fieldValue bean="${addressInstance}" field="streetAddress"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${addressInstance?.id}" />
					<g:link class="edit" action="edit" id="${addressInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
