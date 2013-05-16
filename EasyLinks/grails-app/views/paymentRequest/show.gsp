
<%@ page import="com.progoti.common.PaymentRequest" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'paymentRequest.label', default: 'PaymentRequest')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-paymentRequest" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(controller: 'home')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-paymentRequest" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list paymentRequest">
			
				<g:if test="${paymentRequestInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="paymentRequest.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${paymentRequestInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paymentRequestInstance?.reqTime}">
				<li class="fieldcontain">
					<span id="reqTime-label" class="property-label"><g:message code="paymentRequest.reqTime.label" default="Req Time" /></span>
					
						<span class="property-value" aria-labelledby="reqTime-label"><g:formatDate date="${paymentRequestInstance?.reqTime}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${paymentRequestInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="paymentRequest.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${paymentRequestInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paymentRequestInstance?.byWallet}">
				<li class="fieldcontain">
					<span id="byWallet-label" class="property-label"><g:message code="paymentRequest.byWallet.label" default="By Wallet" /></span>
					
						<span class="property-value" aria-labelledby="byWallet-label"><g:fieldValue bean="${paymentRequestInstance}" field="byWallet"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paymentRequestInstance?.amount}">
				<li class="fieldcontain">
					<span id="amount-label" class="property-label"><g:message code="paymentRequest.amount.label" default="Amount" /></span>
					
						<span class="property-value" aria-labelledby="amount-label"><g:fieldValue bean="${paymentRequestInstance}" field="amount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paymentRequestInstance?.fromWallet}">
				<li class="fieldcontain">
					<span id="fromWallet-label" class="property-label"><g:message code="paymentRequest.fromWallet.label" default="From Wallet" /></span>
					
						<span class="property-value" aria-labelledby="fromWallet-label"><g:fieldValue bean="${paymentRequestInstance}" field="fromWallet"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paymentRequestInstance?.pin}">
				<li class="fieldcontain">
					<span id="pin-label" class="property-label"><g:message code="paymentRequest.pin.label" default="Pin" /></span>
					
						<span class="property-value" aria-labelledby="pin-label"><g:fieldValue bean="${paymentRequestInstance}" field="pin"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paymentRequestInstance?.schoolName}">
				<li class="fieldcontain">
					<span id="schoolName-label" class="property-label"><g:message code="paymentRequest.schoolName.label" default="School Name" /></span>
					
						<span class="property-value" aria-labelledby="schoolName-label"><g:fieldValue bean="${paymentRequestInstance}" field="schoolName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paymentRequestInstance?.studentId}">
				<li class="fieldcontain">
					<span id="studentId-label" class="property-label"><g:message code="paymentRequest.studentId.label" default="Student Id" /></span>
					
						<span class="property-value" aria-labelledby="studentId-label"><g:fieldValue bean="${paymentRequestInstance}" field="studentId"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
			%{--	<fieldset class="buttons">
					<g:hiddenField name="id" value="${paymentRequestInstance?.id}" />
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>--}%
			</g:form>
		</div>
	</body>
</html>
