<%@ page import="com.progoti.security.Feature" %>



<div class="fieldcontain ${hasErrors(bean: featureInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="feature.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${featureInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: featureInstance, field: 'documents', 'error')} ">
	<label for="documents">
		<g:message code="feature.documents.label" default="Documents" />
		
	</label>
	<g:textField name="documents" value="${featureInstance?.documents}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: featureInstance, field: 'authorities', 'error')} ">
	<label for="authorities">
		<g:message code="feature.authorities.label" default="Authorities" />
		
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: featureInstance, field: 'fields', 'error')} ">
	<label for="fields">
		<g:message code="feature.fields.label" default="Fields" />
		
	</label>
	<g:textField name="fields" value="${featureInstance?.fields}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: featureInstance, field: 'module', 'error')} ">
	<label for="module">
		<g:message code="feature.module.label" default="Module" />
		
	</label>
	<g:textField name="module" value="${featureInstance?.module}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: featureInstance, field: 'operation', 'error')} ">
	<label for="operation">
		<g:message code="feature.operation.label" default="Operation" />
		
	</label>
	<g:textField name="operation" value="${featureInstance?.operation}"/>
</div>

