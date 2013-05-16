
<%@ page import="com.progoti.security.Feature" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'feature.label', default: 'Feature')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-feature" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(controller: "home")}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-feature" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list feature">
			
				<g:if test="${featureInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="feature.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${featureInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${featureInstance?.documents}">
				<li class="fieldcontain">
					<span id="documents-label" class="property-label"><g:message code="feature.documents.label" default="Documents" /></span>
					
						<span class="property-value" aria-labelledby="documents-label"><g:fieldValue bean="${featureInstance}" field="documents"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${featureInstance?.authorities}">
				<li class="fieldcontain">
					<span id="authorities-label" class="property-label"><g:message code="feature.authorities.label" default="Authorities" /></span>
					
						<g:each in="${featureInstance.authorities}" var="a">
						<span class="property-value" aria-labelledby="authorities-label"><g:link controller="authority" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${featureInstance?.fields}">
				<li class="fieldcontain">
					<span id="fields-label" class="property-label"><g:message code="feature.fields.label" default="Fields" /></span>
					
						<span class="property-value" aria-labelledby="fields-label"><g:fieldValue bean="${featureInstance}" field="fields"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${featureInstance?.module}">
				<li class="fieldcontain">
					<span id="module-label" class="property-label"><g:message code="feature.module.label" default="Module" /></span>
					
						<span class="property-value" aria-labelledby="module-label"><g:fieldValue bean="${featureInstance}" field="module"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${featureInstance?.operation}">
				<li class="fieldcontain">
					<span id="operation-label" class="property-label"><g:message code="feature.operation.label" default="Operation" /></span>
					
						<span class="property-value" aria-labelledby="operation-label"><g:fieldValue bean="${featureInstance}" field="operation"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${featureInstance?.id}" />
					<g:link class="edit" action="edit" id="${featureInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
