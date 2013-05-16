<div class="listPanel" id="listPanel">
    <h5 class="titel_2"><span>Search Result of Users (${userInstanceTotal})</span> <a href="${createLink(controller: "user")}">Refresh</a></h5>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <form action="" method="post" class="searchRes">
        <div>
            <g:select class="changeRow" name="maxRowNo" from="['20 Results','50 Results','100 Results']" keys="['20','50','100']" value="${session.max?:'1'}" onchange="${remoteFunction(controller: "user",action: "search",update: "listPanel",params:'\'max=\' + (this.value)')}"/>
        </div>

    </form>
    %{--<div>--}%

        %{--<g:jasperReport jasper="receiptReport" controller="report" action="receipt"  format="PDF,XLS" name="Export to PDF" >--}%
            %{--<input type="hidden" name="id" value="1">--}%
        %{--</g:jasperReport>--}%
    %{--</div>--}%
    <div class="listPanel_wrap">
        <div class="listPanel_top">
            <div class="adminCurrent_col1"><g:sortableColumn property="profile.middleName" title="${message(code: 'user.profile.fullName.label', default: 'Full Name')}" /></div>
            <div class="adminCurrent_col2"><g:message code="user.profile.designation.label" default="Designation" /></div>
            <div class="adminCurrent_col3"><g:sortableColumn property="userName" title="${message(code: 'user.userName.label', default: 'Login ID')}" /></div>
            <div class="adminCurrent_col5"><g:message code="user.profile.address.label" default="Address" /></div>
            <div class="adminCurrent_col6"><g:message code="user.profile.photo.label" default="Photo" /></div>
            <div class="adminCurrent_col7"><g:message code="user.profile.status.label" default="Status" /></div>
        </div>
        <!--/listPanel_top end-->

        <div class="listPanel_bottom">
            <div class="adminCurrent_content">
                <g:set var="row25" value="${false}"/>
                %{--<g:set var="row50" value="${false}"/>
                <g:set var="row100" value="${false}"/>--}%
                <g:each in="${userInstanceList}" status="i" var="userInstance">
                        <g:set var="row25" value="${true}"/>
                   %{-- <g:elseif test="${i<=2 && !row50}">
                        </div>
                        <g:set var="row50" value="${true}"/>
                        <div id="res50">
                    </g:elseif>
                    <g:elseif test="${i<=3 && !row100}">
                        </div>
                        <g:set var="row100" value="${true}"/>
                        <div id="res100">
                    </g:elseif>--}%

                    <div class="adminCurrent_content_row">
                        <div class="adminCurrent_col1"><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance.profile, field: "firstName")+" "+fieldValue(bean: userInstance.profile, field: "middleName")+" "+fieldValue(bean: userInstance.profile, field: "lastName")}</g:link>&nbsp;</div>
                        <div class="adminCurrent_col2">${fieldValue(bean: userInstance.profile, field: "designation")+" "}&nbsp;</div>
                        <div class="adminCurrent_col3"><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "userName")}</g:link>&nbsp;</div>
                        <div class="adminCurrent_col5">${fieldValue(bean: userInstance.profile?.address, field: "region")+" "+fieldValue(bean: userInstance.profile?.address, field: "country")}&nbsp;</div>
                        <div class="adminCurrent_col6"><g:img width="50px;" dir="/" file="${userInstance.profile?.imageUrl}"></g:img>&nbsp; </div>
                        <div class="adminCurrent_col7">${fieldValue(bean: userInstance, field: "isActive")?"Active":"In Active"}&nbsp;</div>
                    </div>


                </g:each>
            <!--/adminCurrent_content_row end-->




            <!--/adminCurrent_content_row end-->


                <!--/res50 end-->

                <div class="pagination">
                    <g:progotiPaginate total="${userInstanceTotal}" controller="user" action="list" />
                </div>
                <!--/adminCurrent_content_row2 end-->

            </div>
            <!--/adminCurrent_content end-->
        </div>
        <!--/listPanel_bottom end-->
    </div>
    <!--/listPanel_wrap-->
</div>