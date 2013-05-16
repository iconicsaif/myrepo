<%@ page import="com.progoti.common.PaymentRequest" %>



<div class="fieldcontain ${hasErrors(bean: paymentRequestInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="paymentRequest.type.label" default="Type" />
		
	</label>
	<g:textField name="type" value="${paymentRequestInstance?.type}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: paymentRequestInstance, field: 'reqTime', 'error')} ">
	<label for="reqTime">
		<g:message code="paymentRequest.reqTime.label" default="Req Time" />
		
	</label>
	<g:datePicker name="reqTime" precision="day"  value="${paymentRequestInstance?.reqTime}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: paymentRequestInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="paymentRequest.status.label" default="Status" />
		
	</label>
	<g:textField name="status" value="${paymentRequestInstance?.status}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: paymentRequestInstance, field: 'byWallet', 'error')} ">
	<label for="byWallet">
		<g:message code="paymentRequest.byWallet.label" default="By Wallet" />
		
	</label>
	<g:textField name="byWallet" value="${paymentRequestInstance?.byWallet}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: paymentRequestInstance, field: 'amount', 'error')} required">
	<label for="amount">
		<g:message code="paymentRequest.amount.label" default="Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="amount" value="${fieldValue(bean: paymentRequestInstance, field: 'amount')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: paymentRequestInstance, field: 'fromWallet', 'error')} ">
	<label for="fromWallet">
		<g:message code="paymentRequest.fromWallet.label" default="From Wallet" />
		
	</label>
	<g:textField name="fromWallet" value="${paymentRequestInstance?.fromWallet}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: paymentRequestInstance, field: 'pin', 'error')} ">
	<label for="pin">
		<g:message code="paymentRequest.pin.label" default="Pin" />
		
	</label>
	<g:textField name="pin" value="${paymentRequestInstance?.pin}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: paymentRequestInstance, field: 'schoolName', 'error')} ">
	<label for="schoolName">
		<g:message code="paymentRequest.schoolName.label" default="School Name" />
		
	</label>
	<g:textField name="schoolName" value="${paymentRequestInstance?.schoolName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: paymentRequestInstance, field: 'studentId', 'error')} ">
	<label for="studentId">
		<g:message code="paymentRequest.studentId.label" default="Student Id" />
		
	</label>
	<g:textField name="studentId" value="${paymentRequestInstance?.studentId}"/>
</div>

