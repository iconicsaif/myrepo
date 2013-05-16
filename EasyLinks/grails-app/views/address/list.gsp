
<%@ page import="com.progoti.security.Address" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'address.label', default: 'Address')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-address" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(controller: "home")}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-address" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="address.country.label" default="Country" /></th>
					
						<g:sortableColumn property="extendedAddress" title="${message(code: 'address.extendedAddress.label', default: 'Extended Address')}" />
					
						<g:sortableColumn property="poBox" title="${message(code: 'address.poBox.label', default: 'Po Box')}" />
					
						<g:sortableColumn property="postalCode" title="${message(code: 'address.postalCode.label', default: 'Postal Code')}" />
					
						<g:sortableColumn property="region" title="${message(code: 'address.region.label', default: 'Region')}" />
					
						<g:sortableColumn property="streetAddress" title="${message(code: 'address.streetAddress.label', default: 'Street Address')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${addressInstanceList}" status="i" var="addressInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${addressInstance.id}">${fieldValue(bean: addressInstance, field: "country")}</g:link></td>
					
						<td>${fieldValue(bean: addressInstance, field: "extendedAddress")}</td>
					
						<td>${fieldValue(bean: addressInstance, field: "poBox")}</td>
					
						<td>${fieldValue(bean: addressInstance, field: "postalCode")}</td>
					
						<td>${fieldValue(bean: addressInstance, field: "region")}</td>
					
						<td>${fieldValue(bean: addressInstance, field: "streetAddress")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${addressInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
