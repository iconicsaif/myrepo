
<%@ page import="com.progoti.security.Feature" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'feature.label', default: 'Feature')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-feature" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(controller: "home")}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-feature" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="description" title="${message(code: 'feature.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="documents" title="${message(code: 'feature.documents.label', default: 'Documents')}" />
					
						<g:sortableColumn property="fields" title="${message(code: 'feature.fields.label', default: 'Fields')}" />
					
						<g:sortableColumn property="module" title="${message(code: 'feature.module.label', default: 'Module')}" />
					
						<g:sortableColumn property="operation" title="${message(code: 'feature.operation.label', default: 'Operation')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${featureInstanceList}" status="i" var="featureInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${featureInstance.id}">${fieldValue(bean: featureInstance, field: "description")}</g:link></td>
					
						<td>${fieldValue(bean: featureInstance, field: "documents")}</td>
					
						<td>${fieldValue(bean: featureInstance, field: "fields")}</td>
					
						<td>${fieldValue(bean: featureInstance, field: "module")}</td>
					
						<td>${fieldValue(bean: featureInstance, field: "operation")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${featureInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
