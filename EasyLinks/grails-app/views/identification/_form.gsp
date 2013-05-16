<%@ page import="com.progoti.security.Identification" %>



<div class="fieldcontain ${hasErrors(bean: identificationInstance, field: 'passport', 'error')} ">
	<label for="passport">
		<g:message code="identification.passport.label" default="Passport" />
		
	</label>
	<g:select id="passport" name="passport.id" from="${com.progoti.security.Passport.list()}" optionValue="passportNumber" optionKey="id" value="${identificationInstance?.passport?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: identificationInstance, field: 'drivingLicense', 'error')} ">
	<label for="drivingLicense">
		<g:message code="identification.drivingLicense.label" default="Driving License" />
		
	</label>
	<g:select id="drivingLicense" name="drivingLicense.id" from="${com.progoti.security.DrivingLicense.list()}" optionValue="drivingLicenseNumber" optionKey="id" value="${identificationInstance?.drivingLicense?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: identificationInstance, field: 'nationalIdentificationNumber', 'error')} ">
	<label for="nationalIdentificationNumber">
		<g:message code="identification.nationalIdentificationNumber.label" default="National Identification Number" />
		
	</label>
	<g:textField name="nationalIdentificationNumber" value="${identificationInstance?.nationalIdentificationNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: identificationInstance, field: 'userProfile', 'error')} required">
	<label for="userProfile">
		<g:message code="identification.userProfile.label" default="User Profile" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="userProfile" name="userProfile.id" from="${com.progoti.security.UserProfile.list()}" optionKey="id" required="" value="${identificationInstance?.userProfile?.id}" class="many-to-one"/>
</div>

