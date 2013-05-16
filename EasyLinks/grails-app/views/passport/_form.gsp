<%@ page import="com.progoti.security.Passport" %>



<div class="fieldcontain ${hasErrors(bean: passportInstance, field: 'expiredDate', 'error')} required">
	<label for="expiredDate">
		<g:message code="passport.expiredDate.label" default="Expired Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="expiredDate" precision="day"  value="${passportInstance?.expiredDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: passportInstance, field: 'issueDate', 'error')} required">
	<label for="issueDate">
		<g:message code="passport.issueDate.label" default="Issue Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="issueDate" precision="day"  value="${passportInstance?.issueDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: passportInstance, field: 'issueFrom', 'error')} ">
	<label for="issueFrom">
		<g:message code="passport.issueFrom.label" default="Issue From" />
		
	</label>
	<g:textField name="issueFrom" value="${passportInstance?.issueFrom}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: passportInstance, field: 'passportNumber', 'error')} ">
	<label for="passportNumber">
		<g:message code="passport.passportNumber.label" default="Passport Number" />
		
	</label>
	<g:textField name="passportNumber" value="${passportInstance?.passportNumber}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: passportInstance, field: 'isActive', 'error')} ">
    <label for="isActive">
        <g:message code="passport.isActive.label" default="Is Active" />

    </label>
    <g:checkBox name="isActive" value="${passportInstance?.isActive}" />
</div>

