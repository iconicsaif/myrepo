<%@ page import="com.progoti.security.DrivingLicense" %>



<div class="fieldcontain ${hasErrors(bean: drivingLicenseInstance, field: 'drivingLicenseNumber', 'error')} ">
	<label for="drivingLicenseNumber">
		<g:message code="drivingLicense.drivingLicenseNumber.label" default="Driving License Number" />
		
	</label>
	<g:textField name="drivingLicenseNumber" value="${drivingLicenseInstance?.drivingLicenseNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: drivingLicenseInstance, field: 'expiredDate', 'error')} required">
	<label for="expiredDate">
		<g:message code="drivingLicense.expiredDate.label" default="Expired Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="expiredDate" precision="day"  value="${drivingLicenseInstance?.expiredDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: drivingLicenseInstance, field: 'issueDate', 'error')} required">
	<label for="issueDate">
		<g:message code="drivingLicense.issueDate.label" default="Issue Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="issueDate" precision="day"  value="${drivingLicenseInstance?.issueDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: drivingLicenseInstance, field: 'issueFrom', 'error')} ">
	<label for="issueFrom">
		<g:message code="drivingLicense.issueFrom.label" default="Issue From" />
		
	</label>
	<g:textField name="issueFrom" value="${drivingLicenseInstance?.issueFrom}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: drivingLicenseInstance, field: 'isActive', 'error')} ">
    <label for="isActive">
        <g:message code="drivingLicense.isActive.label" default="Is Active" />

    </label>
    <g:checkBox name="isActive" value="${drivingLicenseInstance?.isActive}" />
</div>

