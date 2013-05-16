
<%@ page import="com.progoti.security.UserProfile" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'userProfile.label', default: 'UserProfile')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-userProfile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(controller: "home")}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-userProfile" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list userProfile">
			
				<g:if test="${userProfileInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="userProfile.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${userProfileInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userProfileInstance?.middleName}">
				<li class="fieldcontain">
					<span id="middleName-label" class="property-label"><g:message code="userProfile.middleName.label" default="Middle Name" /></span>
					
						<span class="property-value" aria-labelledby="middleName-label"><g:fieldValue bean="${userProfileInstance}" field="middleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userProfileInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="userProfile.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${userProfileInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userProfileInstance?.nickName}">
				<li class="fieldcontain">
					<span id="nickName-label" class="property-label"><g:message code="userProfile.nickName.label" default="Nick Name" /></span>
					
						<span class="property-value" aria-labelledby="nickName-label"><g:fieldValue bean="${userProfileInstance}" field="nickName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userProfileInstance?.imageUrl}">
				<li class="fieldcontain">
					<span id="imageUrl-label" class="property-label"><g:message code="userProfile.imageUrl.label" default="Image Url" /></span>
					
						<span class="property-value" aria-labelledby="imageUrl-label"><g:fieldValue bean="${userProfileInstance}" field="imageUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userProfileInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="userProfile.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${userProfileInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userProfileInstance?.dateOfBirth}">
				<li class="fieldcontain">
					<span id="dateOfBirth-label" class="property-label"><g:message code="userProfile.dateOfBirth.label" default="Date Of Birth" /></span>
					
						<span class="property-value" aria-labelledby="dateOfBirth-label"><g:formatDate date="${userProfileInstance?.dateOfBirth}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userProfileInstance?.designation}">
				<li class="fieldcontain">
					<span id="designation-label" class="property-label"><g:message code="userProfile.designation.label" default="Designation" /></span>
					
						<span class="property-value" aria-labelledby="designation-label"><g:fieldValue bean="${userProfileInstance}" field="designation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userProfileInstance?.updated}">
				<li class="fieldcontain">
					<span id="updated-label" class="property-label"><g:message code="userProfile.updated.label" default="Updated" /></span>
					
						<span class="property-value" aria-labelledby="updated-label"><g:formatDate date="${userProfileInstance?.updated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userProfileInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="userProfile.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:link controller="address" action="show" id="${userProfileInstance?.address?.id}">${userProfileInstance?.address?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${userProfileInstance?.identification}">
				<li class="fieldcontain">
					<span id="identification-label" class="property-label"><g:message code="userProfile.identification.label" default="Identification" /></span>
					
						<span class="property-value" aria-labelledby="identification-label"><g:link controller="identification" action="show" id="${userProfileInstance?.identification?.id}">${userProfileInstance?.identification?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${userProfileInstance?.emailAddress}">
				<li class="fieldcontain">
					<span id="emailAddress-label" class="property-label"><g:message code="userProfile.emailAddress.label" default="Email Address" /></span>
					
						<span class="property-value" aria-labelledby="emailAddress-label"><g:fieldValue bean="${userProfileInstance}" field="emailAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userProfileInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="userProfile.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${userProfileInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userProfileInstance?.created}">
				<li class="fieldcontain">
					<span id="created-label" class="property-label"><g:message code="userProfile.created.label" default="Created" /></span>
					
						<span class="property-value" aria-labelledby="created-label"><g:formatDate date="${userProfileInstance?.created}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userProfileInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="userProfile.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${userProfileInstance?.user?.id}">${userProfileInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${userProfileInstance?.id}" />
					<g:link class="edit" action="edit" id="${userProfileInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
