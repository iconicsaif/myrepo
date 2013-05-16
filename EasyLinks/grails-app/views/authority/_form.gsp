<%@ page import="com.progoti.security.Authority" %>



<div class="fieldcontain ${hasErrors(bean: authorityInstance, field: 'roleTitle', 'error')} required">
	<label for="roleTitle">
		<g:message code="authority.roleTitle.label" default="Role Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="roleTitle" maxlength="30" required="" value="${authorityInstance?.roleTitle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: authorityInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="authority.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${authorityInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: authorityInstance, field: 'features', 'error')} ">
	<label for="features">
		<g:message code="authority.features.label" default="Features" />
		
	</label>
	<g:select name="features" from="${com.progoti.security.Feature.list()}" multiple="multiple" optionKey="id" size="5" value="${authorityInstance?.features*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: authorityInstance, field: 'userGroups', 'error')} ">
	<label for="userGroups">
		<g:message code="authority.userGroups.label" default="User Groups" />
		
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: authorityInstance, field: 'users', 'error')} ">
	<label for="users">
		<g:message code="authority.users.label" default="Users" />
		
	</label>
	
</div>

