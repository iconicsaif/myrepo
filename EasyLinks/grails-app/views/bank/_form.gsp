<%@ page import="com.progoti.security.Bank" %>



<div class="fieldcontain ${hasErrors(bean: bankInstance, field: 'fullName', 'error')} ">
	<label for="fullName">
		<g:message code="bank.fullName.label" default="Full Name" />
		
	</label>
	<g:textField name="fullName" value="${bankInstance?.fullName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bankInstance, field: 'isActive', 'error')} ">
	<label for="isActive">
		<g:message code="bank.isActive.label" default="Is Active" />
		
	</label>
	<g:checkBox name="isActive" value="${bankInstance?.isActive}" />
</div>

<div class="fieldcontain ${hasErrors(bean: bankInstance, field: 'shortName', 'error')} ">
	<label for="shortName">
		<g:message code="bank.shortName.label" default="Short Name" />
		
	</label>
	<g:textField name="shortName" value="${bankInstance?.shortName}"/>
</div>

