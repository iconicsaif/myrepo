<%@ page import="com.progoti.security.UserProfile" %>



<div class="fieldcontain ${hasErrors(bean: userProfileInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="userProfile.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${userProfileInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userProfileInstance, field: 'middleName', 'error')} ">
	<label for="middleName">
		<g:message code="userProfile.middleName.label" default="Middle Name" />
		
	</label>
	<g:textField name="middleName" value="${userProfileInstance?.middleName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userProfileInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="userProfile.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${userProfileInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userProfileInstance, field: 'nickName', 'error')} ">
	<label for="nickName">
		<g:message code="userProfile.nickName.label" default="Nick Name" />
		
	</label>
	<g:textField name="nickName" value="${userProfileInstance?.nickName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userProfileInstance, field: 'imageUrl', 'error')} ">
	<label for="imageUrl">
		<g:message code="userProfile.imageUrl.label" default="Image Url" />
		
	</label>
	<g:textField name="imageUrl" value="${userProfileInstance?.imageUrl}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userProfileInstance, field: 'gender', 'error')} ">
	<label for="gender">
		<g:message code="userProfile.gender.label" default="Gender" />
		
	</label>
	<g:textField name="gender" value="${userProfileInstance?.gender}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userProfileInstance, field: 'dateOfBirth', 'error')} ">
	<label for="dateOfBirth">
		<g:message code="userProfile.dateOfBirth.label" default="Date Of Birth" />
		
	</label>
	<g:datePicker name="dateOfBirth" precision="day"  value="${userProfileInstance?.dateOfBirth}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: userProfileInstance, field: 'designation', 'error')} ">
	<label for="designation">
		<g:message code="userProfile.designation.label" default="Designation" />
		
	</label>
	<g:textField name="designation" value="${userProfileInstance?.designation}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userProfileInstance, field: 'updated', 'error')} ">
	<label for="updated">
		<g:message code="userProfile.updated.label" default="Updated" />
		
	</label>
	<g:datePicker name="updated" precision="day"  value="${userProfileInstance?.updated}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: userProfileInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="userProfile.address.label" default="Address" />
		
	</label>
	<g:select id="address" name="address.id" from="${com.progoti.security.Address.list()}" optionKey="id" value="${userProfileInstance?.address?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userProfileInstance, field: 'identification', 'error')} ">
	<label for="identification">
		<g:message code="userProfile.identification.label" default="Identification" />
		
	</label>
	<g:select id="identification" name="identification.id" from="${com.progoti.security.Identification.list()}" optionKey="id" value="${userProfileInstance?.identification?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userProfileInstance, field: 'emailAddress', 'error')} required">
	<label for="emailAddress">
		<g:message code="userProfile.emailAddress.label" default="Email Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="emailAddress" required="" value="${userProfileInstance?.emailAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userProfileInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="userProfile.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${userProfileInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userProfileInstance, field: 'created', 'error')} required">
	<label for="created">
		<g:message code="userProfile.created.label" default="Created" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="created" precision="day"  value="${userProfileInstance?.created}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: userProfileInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="userProfile.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${com.progoti.security.User.list()}" optionKey="id" required="" value="${userProfileInstance?.user?.id}" class="many-to-one"/>
</div>

