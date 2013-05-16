<%@ page import="com.progoti.security.User" %>
<div class="agent_reg_col1">
    <h5 class="title_7">Primary Information</h5>
    <div class="defaultDiv">
        <div class="FormRow1"><span><label>*</label><label class="fieldLabel" for="userName"> <g:message code="user.loginID.label" default="Login ID" /></label></span><g:textField disabled="" class="inputBox9 boxDefault" name="userName" maxlength="100" required="" value="${userInstance?.userName}"/></div>
        <div class="FormRow1"><span><label>*</label> <label class="fieldLabel" > <g:message code="user.password.label" default="Password" /></label></span> <g:message code="user.passwordNotShown.label" default="For security reason password is not shown here" /></div>
        <div class="FormRow1"> <span><label class="fieldLabel" for="firstName"> <g:message code="userProfile.firstName.label" default="First Name" /></label></span><g:textField disabled="" id="firstName" class="inputBox9 boxDefault" name="profile.firstName" maxlength="100" required="" value="${userProfileInstance?.firstName}"/></div>
        <div class="FormRow1"> <span><label class="fieldLabel" for="middleName"> <g:message code="userProfile.middleName.label" default="Middle Name" /></label></span><g:textField disabled="" id="middleName" class="inputBox9 boxDefault" name="profile.middleName" maxlength="100" required="" value="${userProfileInstance?.middleName}"/></div>
        <div class="FormRow1"> <span><label class="fieldLabel" for="lastName"> <g:message code="userProfile.lastName.label" default="Last Name" /></label></span><g:textField disabled="" id="lastName" class="inputBox9 boxDefault" name="profile.lastName" maxlength="100" required="" value="${userProfileInstance?.lastName}"/></div>
        <div class="FormRow1"> <span><label class="fieldLabel" for="nickName"> <g:message code="userProfile.nickName.label" default="Nick Name" /></label></span><g:textField disabled="" id="nickName" class="inputBox9 boxDefault" name="profile.nickName" maxlength="100" required="" value="${userProfileInstance?.nickName}"/></div>
    </div>
    <!--/defaultDiv end-->

    <h5 class="title_7">Personal Information</h5>
    <div class="defaultDiv">

        <div class="FormRow1"><span> <label class="fieldLabel" for="dateOfBirth"> <g:message code="userProfile.dateOfBirth.label" default="Date Of Birth" /> </label></span><g:textField disabled="" name="dateOfBirth" class="inputBox9 calender boxDefault" value="${userProfileInstance?.dateOfBirth}" /></div>
        <div class="FormRow1">
            <span> <g:message code="userProfile.gender.label" default="Gender" /> </span>
            <ul class="gender">
                ${userProfileInstance?.gender}
            </ul>
        </div>
        <div class="FormRow1">
            <span><label class="fieldLabel" for="profile.identification.nationalIdentificationNumber">
                <g:message code="identification.nationalIdentificationNumber.label" default="National Identification Number" /></label>
            </span>
            <g:textField disabled="" class="inputBox9 boxDefault"  name="profile.identification.nationalIdentificationNumber" value="${identificationInstance?.nationalIdentificationNumber}"/>
        </div>


        <div class="FormRow1">
            <span><label>*</label><label class="fieldLabel" for="profile.emailAddress"> <g:message code="userProfile.emailAddress.label" default="Email Address"/></label></span>
            <g:field disabled="" class="inputBox9 boxDefault" type="email" name="profile.emailAddress" required="" value="${userProfileInstance?.emailAddress}"/>
        </div>
        <div class="FormRow1">
            <span><label>*</label><label class="fieldLabel" for="profile.title"> <g:message code="userProfile.title.label" default="Title"/></label></span>
            <g:textField disabled="" class="inputBox9 boxDefault" name="profile.title" required="" value="${userProfileInstance?.title}"/>
        </div>
        <div class="FormRow1">
            <span>
                <label class="fieldLabel" for="profile.imageUrl">
                    <g:message code="userProfile.uploadPhoto.label" default="Upload Photo" />
                </label>
            </span>
          </div>
        <div class="FormRow1 preview-photo" id="previewPhoto">
            <g:render template="preview_photo"/>
        </div>



    </div>


    <!--/defaultDiv end-->
</div>
<!--/agent_reg_col1-->

<div class="agent_reg_col2">
    <h5 class="title_7">Present Address</h5>
    <div class="defaultDiv">
        <div class="FormRow1"><span> <label class="fieldLabel" for="profile.address.streetAddress"> <g:message code="address.streetAddress.label" default="Address" /> </label></span>
            <g:textArea disabled="" class="textareaBox1 boxDefault" name="profile.address.streetAddress" value="${addressInstance?.streetAddress}" cols="2" rows="2"/> </div>
        <div class="FormRow1"><span> <label class="fieldLabel" for="profile.address.extendedAddress">
            <g:message code="address.extendedAddress.label" default="Village/Area" />

        </label> </span>
            <g:textField disabled="" class="inputBox9 boxDefault" name="profile.address.extendedAddress" value="${addressInstance?.extendedAddress}"/></div>
        <div class="FormRow1">
            <span> <label class="fieldLabel" for="profile.address.region">
                <g:message code="address.region.label" default="Region" />

            </label> </span>
            <g:textField disabled="" class="inputBox9 boxDefault" name="profile.address.region" value="${addressInstance?.region}"/>

        </div>
        <div class="FormRow1">
            <span><label class="fieldLabel" for="profile.address.poBox"> <g:message code="address.poBox.label" default="P.O.Box No." /></label></span>
            <g:textField disabled="" class="inputBox9 boxDefault" name="profile.address.poBox" value="${addressInstance?.poBox}"/>
        </div>
        <div class="FormRow1">
            <span> <label class="fieldLabel" for="profile.address.postalCode"> <g:message code="address.postalCode.label" default="Postal Code" /></label></span>
            <g:textField disabled="" class="inputBox9 boxDefault" name="profile.address.postalCode" value="${addressInstance?.postalCode}"/>
        </div>
        <div class="FormRow1">
            <span><label>*</label><label class="fieldLabel" for="country"> <g:message code="address.country.label" default="Country" /></label>
            </span>
            ${addressInstance?.country?.name}
        </div>
    </div>
    <!--/defaultDiv end-->
    <h5 class="title_7 offcAdd">Work/Official Information</h5>
    <div class="defaultDiv ">
        <div class="FormRow1">
            <span><label class="fieldLabel" for="school"><g:message code="user.school.label" default="School" /></label></span>
            ${userInstance?.school?.schoolName}
        </div>
        <div class="FormRow1">
            <span><label class="fieldLabel" for="designation"><g:message code="userProfile.designation.label" default="Designation" /></label></span>
            <g:textField disabled="" id="designation" class="inputBox9 boxDefault" name="profile.designation" maxlength="100" required="" value="${userProfileInstance?.designation}"/>
        </div>
    </div>
    <!--/defaultDiv end-->

    <h5 class="title_7">ACL related information</h5>
    <div class="defaultDiv">
        <div class="FormRow1">
            <span><label class="fieldLabel" for="authorities">
                <g:message code="user.authorities.label" default="Authorities" />

            </label>
            </span>
            <g:each in="${userInstance?.authorities}" status="i" var="authority">
            <div>
                ${authority?.roleTitle}
            </div>
            </g:each>
        </div>

        <div class="FormRow1">
            <span><label class="fieldLabel" for="userGroups">
                <g:message code="user.userGroups.label" default="User Groups" />

            </label></span>
            <g:each in="${userInstance?.userGroups}" status="i" var="group">
                <div>
                    ${group?.groupName}
                </div>
            </g:each>
        </div>

        <div class="FormRow1">
            <span><label class="fieldLabel" for="isActive">
                <g:message code="user.isActive.label" default="Is Active" />

            </label>
            </span>
            ${userInstance?.isActive?"Yes":"No"}
        </div>
    </div>
    <!--/defaultDiv end-->
</div>
<!--/agent_reg_col1-->




