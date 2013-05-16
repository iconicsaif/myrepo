<%@ page import="com.progoti.security.UserGroup" %>



<div class="fieldcontain ${hasErrors(bean: userGroupInstance, field: 'groupName', 'error')} required">
	<label for="groupName">
		<g:message code="userGroup.groupName.label" default="Group Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="groupName" maxlength="50" required="" value="${userGroupInstance?.groupName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userGroupInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="userGroup.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${userGroupInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userGroupInstance, field: 'authorities', 'error')} ">
	<label for="authorities">
		<g:message code="userGroup.authorities.label" default="Authorities" />
		
	</label>
	<g:select name="authorities" from="${com.progoti.security.Authority.list()}" multiple="multiple" optionKey="id" size="5" value="${userGroupInstance?.authorities*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userGroupInstance, field: 'isActive', 'error')} ">
	<label for="isActive">
		<g:message code="userGroup.isActive.label" default="Is Active" />
		
	</label>
	<g:checkBox name="isActive" value="${userGroupInstance?.isActive}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userGroupInstance, field: 'users', 'error')} ">
	<label for="users">
		<g:message code="userGroup.users.label" default="Users" />
		
	</label>
	
</div>

