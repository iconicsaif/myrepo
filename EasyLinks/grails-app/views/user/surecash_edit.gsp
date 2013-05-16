<%@ page import="com.progoti.security.User" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="surecash_default_layout">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
    <div class="agentWrapper">

        <g:if test="${flash.message}">
            <h5 class="titel_1" role="status">${flash.message}Test</h5>
        </g:if>
        <g:else>
            <h5 class="titel_1">User Registration</h5>
        </g:else>
        <g:hasErrors bean="${userInstance}">
            <ul class="errors" role="alert">
                <g:eachError bean="${userInstance}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
        </g:hasErrors>
<g:form controller="user" action="update" >
    <div class="agentWrap_top">
        <g:render template="surecash_form"/>
    </div>
    <div class="agentWrap_bottom">
        <input type="submit" name="" value="Update" class="regBTN1 button" />
        <a href="/">Cancel</a>
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
