<%@ page import="com.progoti.security.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userName', 'error')} required">
	<label for="userName">
		<g:message code="user.userName.label" default="User Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userName" maxlength="100" required="" value="${userInstance?.userName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:passwordField name="password" maxlength="100" required="" value="${userInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
    <label for="confirmPassword">
        <g:message code="user.password.label" default="Confirm Password" />
        <span class="required-indicator">*</span>
    </label>
    <g:passwordField name="confirmPassword" maxlength="100" required="" value=""/>
</div>

%{----}%

<div class="fieldcontain ${hasErrors(bean: userProfileInstance, field: 'firstName', 'error')} ">
    <label for="firstName">
        <g:message code="userProfile.firstName.label" default="First Name" />

    </label>
    <g:textField name="profile.firstName" value="${userProfileInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userProfileInstance, field: 'middleName', 'error')} ">
    <label for="middleName">
        <g:message code="userProfile.middleName.label" default="Middle Name" />

    </label>
    <g:textField name="profile.middleName" value="${userProfileInstance?.middleName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userProfileInstance, field: 'lastName', 'error')} ">
    <label for="lastName">
        <g:message code="userProfile.lastName.label" default="Last Name" />

    </label>
    <g:textField name="profile.lastName" value="${userProfileInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userProfileInstance, field: 'nickName', 'error')} ">
    <label for="nickName">
        <g:message code="userProfile.nickName.label" default="Nick Name" />

    </label>
    <g:textField name="profile.nickName" value="${userProfileInstance?.nickName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userProfileInstance, field: 'imageUrl', 'error')} ">
    <label for="imageUrl">
        <g:message code="userProfile.imageUrl.label" default="Image Url" />

    </label>
    <input type="file" id="profile.imageUrl" name="profile.imageUrl" onchange="fileUpload('profile.imageUrl')">
    <input type="hidden" id="hiddenprofile.imageUrl" name="hiddenprofile.imageUrl">
    %{--<g:textField name="profile.imageUrl" value="${userProfileInstance?.imageUrl}"/>--}%
</div>

<div class="fieldcontain ${hasErrors(bean: userProfileInstance, field: 'gender', 'error')} ">
    <label for="gender">
        <g:message code="userProfile.gender.label" default="Gender" />

    </label>
    <g:radioGroup name="profile.gender"
                  labels="['Male','Female']"
                  values="['Male','Female']">
        ${it.label} ${it.radio}
    </g:radioGroup>
    %{--<g:textField name="profile.gender" value="${userProfileInstance?.gender}"/>--}%
</div>

<div class="fieldcontain ${hasErrors(bean: userProfileInstance, field: 'dateOfBirth', 'error')} ">
    <label for="dateOfBirth">
        <g:message code="userProfile.dateOfBirth.label" default="Date Of Birth" />

    </label>
    <g:datePicker name="profile.dateOfBirth" precision="day"  value="${userProfileInstance?.dateOfBirth}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: userProfileInstance, field: 'designation', 'error')} ">
    <label for="designation">
        <g:message code="userProfile.designation.label" default="Designation" />

    </label>
    <g:textField name="profile.designation" value="${userProfileInstance?.designation}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'country', 'error')} required">
    <label for="country">
        <g:message code="address.country.label" default="Country" />
        <span class="required-indicator">*</span>
    </label>
    <g:select id="country" name="profile.address.country.id" from="${com.progoti.security.Country.list()}" optionKey="id" required="" value="${addressInstance?.country?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'extendedAddress', 'error')} ">
    <label for="extendedAddress">
        <g:message code="address.extendedAddress.label" default="Extended Address" />

    </label>
    <g:textField name="profile.address.extendedAddress" value="${addressInstance?.extendedAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'poBox', 'error')} ">
    <label for="poBox">
        <g:message code="address.poBox.label" default="Po Box" />

    </label>
    <g:textField name="profile.address.poBox" value="${addressInstance?.poBox}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'postalCode', 'error')} ">
    <label for="postalCode">
        <g:message code="address.postalCode.label" default="Postal Code" />

    </label>
    <g:textField name="profile.address.postalCode" value="${addressInstance?.postalCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'region', 'error')} ">
    <label for="region">
        <g:message code="address.region.label" default="Region" />

    </label>
    <g:textField name="profile.address.region" value="${addressInstance?.region}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'streetAddress', 'error')} ">
    <label for="streetAddress">
        <g:message code="address.streetAddress.label" default="Street Address" />

    </label>
    <g:textField name="profile.address.streetAddress" value="${addressInstance?.streetAddress}"/>
</div>



<div class="fieldcontain ${hasErrors(bean: identificationInstance, field: 'nationalIdentificationNumber', 'error')} ">
    <label for="nationalIdentificationNumber">
        <g:message code="identification.nationalIdentificationNumber.label" default="National Identification Number" />

    </label>
    <g:textField name="profile.identification.nationalIdentificationNumber" value="${identificationInstance?.nationalIdentificationNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userProfileInstance, field: 'emailAddress', 'error')} required">
    <label for="emailAddress">
        <g:message code="userProfile.emailAddress.label" default="Email Address" />
        <span class="required-indicator">*</span>
    </label>
    <g:field type="email" name="profile.emailAddress" required="" value="${userProfileInstance?.emailAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userProfileInstance, field: 'title', 'error')} required">
    <label for="title">
        <g:message code="userProfile.title.label" default="Title" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="profile.title" required="" value="${userProfileInstance?.title}"/>
</div>




<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'authorities', 'error')} ">
	<label for="authorities">
		<g:message code="user.authorities.label" default="Authorities" />
		
	</label>
	<g:select name="authorities" from="${com.progoti.security.Authority.list()}" multiple="multiple" optionKey="id" size="5" value="${userInstance?.authorities*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userGroups', 'error')} ">
	<label for="userGroups">
		<g:message code="user.userGroups.label" default="User Groups" />
		
	</label>
	<g:select name="userGroups" from="${com.progoti.security.UserGroup.list()}" multiple="multiple" optionKey="id" size="5" value="${userInstance?.userGroups*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'isActive', 'error')} ">
	<label for="isActive">
		<g:message code="user.isActive.label" default="Is Active" />
		
	</label>
	<g:checkBox name="isActive" value="${userInstance?.isActive}" />
</div>

