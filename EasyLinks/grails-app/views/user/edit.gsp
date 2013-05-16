<%@ page import="com.progoti.security.User" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="surecash_default_layout">
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
    <title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>
<body>
<div class="agentWrapper">
    <h5 class="titel_1">Edit User Information</h5>
    <g:if test="${flash.message}">
        <h5 class="titel_1" role="status">${flash.message}Test</h5>
    </g:if>
    <g:hasErrors bean="${userInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${userInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form controller="user" action="save" >
        <div class="agentWrap_top">
            <g:render template="surecash_form" model="[userInstance: userInstance, userProfileInstance: userInstance?.profile, addressInstance: userInstance?.profile?.address,
                    identificationInstance: userInstance?.profile?.identification,pageId:'edit']"/>
        </div>
        <div class="agentWrap_bottom">
            <g:hiddenField name="id" value="${userInstance?.id}" />
            <g:actionSubmit class="regBTN1 button cboxElement" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
            <g:actionSubmit class="regBTN1 button cboxElement" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
            <span>|</span>
            <a href="">Cancel</a>
        </div>
    </g:form>
</div>
<g:javascript>
    $(document).ready(function(){
        initializeJavaScript();
    });
</g:javascript>
</body>
</html>
