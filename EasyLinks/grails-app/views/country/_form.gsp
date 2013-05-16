<%@ page import="com.progoti.security.Country" %>



<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'code', 'error')} ">
	<label for="code">
		<g:message code="country.code.label" default="Code" />
		
	</label>
	<g:textField name="code" maxlength="3" value="${countryInstance?.code}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'shortCode', 'error')} ">
	<label for="shortCode">
		<g:message code="country.shortCode.label" default="Short Code" />
		
	</label>
	<g:textField name="shortCode" maxlength="2" value="${countryInstance?.shortCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="country.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${countryInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'isdDialingCode', 'error')} ">
	<label for="isdDialingCode">
		<g:message code="country.isdDialingCode.label" default="Isd Dialing Code" />
		
	</label>
	<g:textField name="isdDialingCode" value="${countryInstance?.isdDialingCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'isActive', 'error')} ">
	<label for="isActive">
		<g:message code="country.isActive.label" default="Is Active" />
		
	</label>
	<g:checkBox name="isActive" value="${countryInstance?.isActive}" />
</div>

<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="country.address.label" default="Address" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${countryInstance?.address?}" var="a">
    <li><g:link controller="address" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="address" action="create" params="['country.id': countryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'address.label', default: 'Address')])}</g:link>
</li>
</ul>

</div>

