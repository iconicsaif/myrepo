
<%@ page import="com.progoti.common.PaymentRequest" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'paymentRequest.label', default: 'PaymentRequest')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-paymentRequest" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(controller: 'home')}"><g:message code="default.home.label"/></a></li>
			</ul>
		</div>
		<div id="list-paymentRequest" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="type" title="${message(code: 'paymentRequest.type.label', default: 'Type')}" />
					
						<g:sortableColumn property="reqTime" title="${message(code: 'paymentRequest.reqTime.label', default: 'Req Time')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'paymentRequest.status.label', default: 'Status')}" />
					
						<g:sortableColumn property="byWallet" title="${message(code: 'paymentRequest.byWallet.label', default: 'By Wallet')}" />
					
						<g:sortableColumn property="amount" title="${message(code: 'paymentRequest.amount.label', default: 'Amount')}" />
					
						<g:sortableColumn property="fromWallet" title="${message(code: 'paymentRequest.fromWallet.label', default: 'From Wallet')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${paymentRequestInstanceList}" status="i" var="paymentRequestInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${paymentRequestInstance.id}">${fieldValue(bean: paymentRequestInstance, field: "type")}</g:link></td>
					
						<td><g:formatDate date="${paymentRequestInstance.reqTime}" /></td>
					
						<td>${fieldValue(bean: paymentRequestInstance, field: "status")}</td>
					
						<td>${fieldValue(bean: paymentRequestInstance, field: "byWallet")}</td>
					
						<td>${fieldValue(bean: paymentRequestInstance, field: "amount")}</td>
					
						<td>${fieldValue(bean: paymentRequestInstance, field: "fromWallet")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${paymentRequestInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
