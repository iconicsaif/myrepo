<%@ page import="com.progoti.security.User" %>
<g:set var="disableFlag" value="${pageId.equalsIgnoreCase("show")?'disabled':''}"/>
        <div class="agent_reg_col1">
            <h5 class="title_7">Primary Information</h5>
            <div class="defaultDiv">
                <p class="errorMSG1">Syntax error</p><p class="errorMSG2">Entry required</p>
                <div class="FormRow1"><span><label>*</label><label class="fieldLabel" for="userName"> <g:message code="user.loginID.label" default="Login ID" /></label></span><g:textField class="inputBox9 boxDefault" disabled="disabled" name="userName" maxlength="100" required="" value="${userInstance?.userName}"/></div>
                <p class="errorMSG1">Syntax error</p><p class="errorMSG2">Entry required</p>
                <div class="FormRow1"><span><label>*</label> <label class="fieldLabel" for="password"> <g:message code="user.password.label" default="Password" /></label></span><g:passwordField class="inputBox9 boxDefault" disabled="disabled" name="password" maxlength="100" required="" value=""/></div>
                <p class="errorMSG1">Syntax error</p><p class="errorMSG2">Password did not Match</p>
                <div class="FormRow1"><span><label>*</label><label class="fieldLabel" for="confirmPassword"> <g:message code="user.confirmPassword.label" default="Confirm Password" /></label></span><g:passwordField class="inputBox9 boxDefault" disabled="disabled" name="confirmPassword" maxlength="100" required="" value=""/></div>
                <p class="errorMSG1">Syntax error</p><p class="errorMSG2">Entry required</p>
                <div class="FormRow1"> <span><label class="fieldLabel" for="firstName"> <g:message code="userProfile.firstName.label" default="First Name" /></label></span><g:textField id="firstName" class="inputBox9 boxDefault" disabled="disabled" name="profile.firstName" maxlength="100" required="" value="${userProfileInstance?.firstName}"/></div>
                <p class="errorMSG1">Syntax error</p><p class="errorMSG2">Entry required</p>
                <div class="FormRow1"> <span><label class="fieldLabel" for="middleName"> <g:message code="userProfile.middleName.label" default="Middle Name" /></label></span><g:textField id="middleName" class="inputBox9 boxDefault" disabled="disabled" name="profile.middleName" maxlength="100" required="" value="${userProfileInstance?.middleName}"/></div>
                <p class="errorMSG1">Syntax error</p><p class="errorMSG2">Entry required</p>
                <div class="FormRow1"> <span><label class="fieldLabel" for="lastName"> <g:message code="userProfile.lastName.label" default="Last Name" /></label></span><g:textField id="lastName" class="inputBox9 boxDefault" disabled="disabled" name="profile.lastName" maxlength="100" required="" value="${userProfileInstance?.lastName}"/></div>
                <p class="errorMSG1">Syntax error</p><p class="errorMSG2">Entry required</p>
                <div class="FormRow1"> <span><label class="fieldLabel" for="nickName"> <g:message code="userProfile.nickName.label" default="Nick Name" /></label></span><g:textField id="nickName" class="inputBox9 boxDefault" disabled="disabled" name="profile.nickName" maxlength="100" required="" value="${userProfileInstance?.nickName}"/></div>


            </div>
            <!--/defaultDiv end-->

            <h5 class="title_7">Personal Information</h5>
            <div class="defaultDiv">

                <div class="FormRow1"><span> <label class="fieldLabel" for="dateOfBirth"> <g:message code="userProfile.dateOfBirth.label" default="Date Of Birth" /> </label></span><g:textField disabled="disabled" name="dateOfBirth" class="inputBox9 calender boxDefault" /></div>
                <div class="FormRow1">
                    <span> <g:message code="userProfile.gender.label" default="Gender" /> </span>
                    <ul class="gender">
                        <li class="maleRadio"><g:radio value="Male" disabled="disabled" name="profile.gender" class="boxDefault"  /><label>Male</label></li>
                        <li class="fmaleRadio"><g:radio value="Female" class="boxDefault" disabled="disabled" name="profile.gender" checked="checked"  /><label>Female</label></li>
                        <li><g:radio value="Other" disabled="disabled" name="profile.gender" class="boxDefault"  /><label>Other</label></li>


                    </ul>
                </div>
                <div class="FormRow1">
                    <span><label class="fieldLabel" for="profile.identification.nationalIdentificationNumber">
                        <g:message code="identification.nationalIdentificationNumber.label" default="National Identification Number" /></label>
                    </span>
                    <g:textField class="inputBox9 boxDefault"  disabled="disabled" name="profile.identification.nationalIdentificationNumber" value="${identificationInstance?.nationalIdentificationNumber}"/>
                </div>

                <div class="FormRow1">
                    <span><label class="fieldLabel" for="userProfile.mobileNumber">
                        <g:message code="userProfile.mobileNumber.label" default="Mobile Number" /></label>
                    </span>
                    <g:textField class="inputBox9 boxDefault"  disabled="disabled" name="profile.mobileNumber.label" value="${userProfileInstance?.mobileNumber}"/>
                </div>

                <div class="FormRow1">
                    <span><label>*</label><label class="fieldLabel" for="profile.emailAddress"> <g:message code="userProfile.emailAddress.label" default="Email Address"/></label></span>
                    <g:field class="inputBox9 boxDefault" type="email" disabled="disabled" name="profile.emailAddress" required="" value="${userProfileInstance?.emailAddress}"/>
                </div>
                <div class="FormRow1">
                    <span><label>*</label><label class="fieldLabel" for="profile.title"> <g:message code="userProfile.title.label" default="Title"/></label></span>
                    <g:textField class="inputBox9 boxDefault" disabled="disabled" name="profile.title" required="" value="${userProfileInstance?.title}"/>
                </div>
                <div class="FormRow1">
                    <span>
                        <label class="fieldLabel" for="profile.imageUrl">
                            <g:message code="userProfile.uploadPhoto.label" default="Upload Photo" />
                        </label>
                    </span>
                    <input class="file" type="file" id="profile.imageUrl" disabled="disabled" name="profile.imageUrl" onchange="fileUpload('profile.imageUrl','${request.getContextPath()}', 'previewPhoto')">
                    <input class="fileLoadText" type="hidden" id="hiddenprofile.imageUrl" disabled="disabled" name="hiddenprofile.imageUrl">
                    %{--<g:textField disabled="disabled" name="profile.imageUrl" value="${userProfileInstance?.imageUrl}"/>--}%
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
                    <g:textArea class="textareaBox1 boxDefault" disabled="disabled" name="profile.address.streetAddress" value="${addressInstance?.streetAddress}" cols="2" rows="2"/> </div>
                <div class="FormRow1"><span> <label class="fieldLabel" for="profile.address.extendedAddress">
                    <g:message code="address.extendedAddress.label" default="Village/Area" />

                </label> </span>
                    <g:textField class="inputBox9 boxDefault" disabled="disabled" name="profile.address.extendedAddress" value="${addressInstance?.extendedAddress}"/></div>
                <div class="FormRow1">
                    <span> <label class="fieldLabel" for="profile.address.region">
                        <g:message code="address.region.label" default="Region" />

                    </label> </span>
                        <g:textField class="inputBox9 boxDefault" disabled="disabled" name="profile.address.region" value="${addressInstance?.region}"/>

                </div>
                <div class="FormRow1">
                    <span><label class="fieldLabel" for="profile.address.poBox"> <g:message code="address.poBox.label" default="P.O.Box No." /></label></span>
                    <g:textField class="inputBox9 boxDefault" disabled="disabled" name="profile.address.poBox" value="${addressInstance?.poBox}"/>
                </div>
                <div class="FormRow1">
                    <span> <label class="fieldLabel" for="profile.address.postalCode"> <g:message code="address.postalCode.label" default="Postal Code" /></label></span>
                    <g:textField class="inputBox9 boxDefault" disabled="disabled" name="profile.address.postalCode" value="${addressInstance?.postalCode}"/>
                </div>
                <div class="FormRow1">
                    <span><label>*</label><label class="fieldLabel" for="country"> <g:message code="address.country.label" default="Country" /></label>
                    </span>
                    <g:select id="country" disabled="disabled" name="profile.address.country.id" from="${com.progoti.security.Country.list()}" optionKey="id" required="" value="${addressInstance?.country?.id}" class="selectBox1 boxDefault"/>
                </div>
            </div>
            <!--/defaultDiv end-->
            <h5 class="title_7 offcAdd">Work/Official Information</h5>
            <div class="defaultDiv ">

                <div class="FormRow1">
                    <span><label class="fieldLabel" for="designation"><g:message code="userProfile.designation.label" default="Designation" /></label></span>
                    <g:textField id="designation" class="inputBox9 boxDefault" disabled="disabled" name="profile.designation" maxlength="100" required="" value="${userProfileInstance?.designation}"/>
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
                    <g:select disabled="disabled" name="authorities" from="${com.progoti.security.Authority.list()}" multiple="multiple" optionKey="id" size="5" value="${userInstance?.authorities*.id}" class="multi_selectBox3 boxDefault"/>
                </div>

                <div class="FormRow1">
                    <span><label class="fieldLabel" for="userGroups">
                        <g:message code="user.userGroups.label" default="User Groups" />

                    </label></span>
                    <g:select disabled="disabled" name="userGroups" from="${com.progoti.security.UserGroup.list()}" multiple="multiple" optionKey="id" size="5" value="${userInstance?.userGroups*.id}" class="multi_selectBox3 boxDefault"/>
                </div>

                <div class="FormRow1">
                    <span><label class="fieldLabel" for="isActive">
                        <g:message code="user.isActive.label" default="Is Active" />

                    </label>
                    </span>
                    <g:checkBox disabled="disabled" name="isActive" value="${userInstance?.isActive}" class="checkbox" />
                </div>
            </div>
            <!--/defaultDiv end-->
        </div>
        <!--/agent_reg_col1-->




