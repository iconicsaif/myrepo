<%@ page import="com.progoti.security.User" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
        <g:javascript src="progoti/jquery-latest.js"/>
        <g:javascript src="progoti/jquery-ui-1.8.21.custom.min.js"/>
        <g:javascript src="progoti/jquery.smooth-scroll.min.js"/>
        <g:javascript src="progoti/common.js"/>

        <script type="text/javascript">
            function fileUpload(id) {
//                checkFileSize(id);
                var photographUrl = document.getElementById(id).files[0];
//                alert(document.getElementById(id).value);
                var formdata = new FormData();
                formdata.append(id, photographUrl);

                var xhr = new XMLHttpRequest();
                xhr.open("POST","<%=request.getContextPath()%>/FileUpload", true);

                xhr.send(formdata);
                xhr.onload = function(e) {
                    if (this.status == 200) {
                    }
                };
            }
        </script>
    </head>
	<body>
		<a href="#create-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(controller: "home")}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-user" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${userInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${userInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="save" id="file_upload"  name="file_upload"  method="post">
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
