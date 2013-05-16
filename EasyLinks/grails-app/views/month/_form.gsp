<%@ page import="com.progoti.security.Month" %>



<div class="fieldcontain ${hasErrors(bean: monthInstance, field: 'monthName', 'error')} ">
	<label for="monthName">
		<g:message code="month.monthName.label" default="Month Name" />
		
	</label>
	<g:textField name="monthName" value="${monthInstance?.monthName}"/>
</div>

