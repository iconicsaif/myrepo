<%@ page import="com.progoti.security.Address" %>



<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'country', 'error')} required">
	<label for="country">
		<g:message code="address.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="country" name="country.id" from="${com.progoti.security.Country.list()}" optionKey="id" required="" value="${addressInstance?.country?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'extendedAddress', 'error')} ">
	<label for="extendedAddress">
		<g:message code="address.extendedAddress.label" default="Extended Address" />
		
	</label>
	<g:textField name="extendedAddress" value="${addressInstance?.extendedAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'poBox', 'error')} ">
	<label for="poBox">
		<g:message code="address.poBox.label" default="Po Box" />
		
	</label>
	<g:textField name="poBox" value="${addressInstance?.poBox}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'postalCode', 'error')} ">
	<label for="postalCode">
		<g:message code="address.postalCode.label" default="Postal Code" />
		
	</label>
	<g:textField name="postalCode" value="${addressInstance?.postalCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'region', 'error')} ">
	<label for="region">
		<g:message code="address.region.label" default="Region" />
		
	</label>
	<g:textField name="region" value="${addressInstance?.region}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'streetAddress', 'error')} ">
	<label for="streetAddress">
		<g:message code="address.streetAddress.label" default="Street Address" />
		
	</label>
	<g:textField name="streetAddress" value="${addressInstance?.streetAddress}"/>
</div>

