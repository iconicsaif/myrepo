%{--<%@ page import="com.progoti.security.Section" %>--}%


<div class="fieldcontain ${hasErrors(bean: sectionInstance, field: 'sectionCode', 'error')} ">
    <label for="sectionCode">
        <g:message code="section.sectionCode.label" default="Section Code" />

    </label>
    <g:textField name="sectionCode" value="${sectionInstance?.sectionCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sectionInstance, field: 'classes', 'error')} ">
    <label for="classes">
        <g:message code="section.classes.label" default="Classes" />
    </label>
    <g:select  name="classes" from="${com.progoti.security.Classes.list()}" optionValue="className" optionKey="id" required="" value="${sectionInstance?.classes?.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sectionInstance, field: 'dateFrom', 'error')} ">
	<label for="dateFrom">
		<g:message code="section.dateFrom.label" default="Date From" />
		
	</label>
	<g:datePicker name="dateFrom" precision="day"  value="${sectionInstance?.dateFrom}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: sectionInstance, field: 'dateTo', 'error')} ">
	<label for="dateTo">
		<g:message code="section.dateTo.label" default="Date To" />
		
	</label>
	<g:datePicker name="dateTo" precision="day" value="${sectionInstance?.dateTo}" default="none" noSelection="['': '']" />
</div>




