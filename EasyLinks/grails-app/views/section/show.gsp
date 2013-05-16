
%{--<%@ page import="com.progoti.security.Section" %>--}%
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'section.label', default: 'Section')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-section" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(controller: "home")}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-section" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list section">

                <g:if test="${sectionInstance?.sectionCode}">
                    <li class="fieldcontain">
                        <span id="sectionCode-label" class="property-label"><g:message code="section.sectionCode.label" default="Section Code" /></span>

                        <span class="property-value" aria-labelledby="sectionCode-label"><g:fieldValue bean="${sectionInstance}" field="sectionCode"/></span>

                    </li>
                </g:if>

                <g:if test="${sectionInstance?.classes}">
                    <li class="fieldcontain">
                        <span id="classes-label" class="property-label"><g:message code="section.classes.label" default="Classes" /></span>

                        <g:each in="${sectionInstance.classes}" var="c">
                        %{--<span class="property-value" aria-labelledby="classes-label"><g:link controller="classes" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>--}%
                            <span class="property-value" aria-labelledby="classes-label">${c?.getClassName().encodeAsHTML()}</span>
                        </g:each>

                    </li>
                </g:if>

				<g:if test="${sectionInstance?.dateFrom}">
				<li class="fieldcontain">
					<span id="dateFrom-label" class="property-label"><g:message code="section.dateFrom.label" default="Date From" /></span>
					
						<span class="property-value" aria-labelledby="dateFrom-label"><g:formatDate date="${sectionInstance?.dateFrom}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sectionInstance?.dateTo}">
				<li class="fieldcontain">
					<span id="dateTo-label" class="property-label"><g:message code="section.dateTo.label" default="Date To" /></span>
					
						<span class="property-value" aria-labelledby="dateTo-label"><g:formatDate date="${sectionInstance?.dateTo}" /></span>
					
				</li>
				</g:if>
			

			

			
				<g:if test="${sectionInstance?.student}">
				<li class="fieldcontain">
					<span id="student-label" class="property-label"><g:message code="section.student.label" default="Student" /></span>
					
						<g:each in="${sectionInstance.student}" var="s">
						<span class="property-value" aria-labelledby="student-label"><g:link controller="student" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${sectionInstance?.id}" />
					<g:link class="edit" action="edit" id="${sectionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
