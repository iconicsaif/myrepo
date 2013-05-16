<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="Author" content="Progoti Systems Limited"/>
    <title><g:layoutTitle default="SureCash Mobile Financial Services"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: '32-SureCash-2.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: '115-SureCash-2.png')}">

    <link rel="stylesheet" href="${resource(dir: 'css/progoti', file: 'style.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/progoti', file: 'agent_style.css')}" type="text/css">

    <script type="text/javascript">
    initializeJavaScript=function(){
        initCalendar();
    }
    function showResults(response) {
        var users = eval('(' + response.responseText + ')');
        //apply the JSON array to the template
        jQuery('#listPanel').processTemplate(users);
    }

    function showError() {
        alert('Error');
    }
    function heightPage() {
        var h1 = $('select.changeRow').val();
        if (h1 == 50) {
            $('#res100').hide();
            $('#res50').slideDown('slow');
            $('#sideBar').css('height', '1432px');
            $('#sideBar').css('min-height', '1432px');
        }
        else if (h1 == 25) {
            $('#res50,#res100').hide();
            $('#res25').slideDown('slow');
            $('#sideBar').css('height', '858px');
            $('#sideBar').css('min-height', '858px');
        }
        else if (h1 == 100) {
            $('#res50,#res25').show();
            $('#res100').show('slow');
            $('#sideBar').css('height', '2582px');
            $('#sideBar').css('min-height', '2582px');
        }

    }

</script>
    <g:layoutHead/>
    <r:layoutResources/>

</head>

<body>
<div id="wrapper">
    <div class="inner_wrapper">
        <!--header start-->
        <div id="header">
            <img src="${resource(dir: 'images', file: 'banner.jpg')}" alt="" class="banner_img"/>
        </div>
        <!--/header end-->

        <!--container start-->
        <div id="container">
            <div class="container_top">
                <div class="sidebar_top">
                    <span> <g:message code="layout.schoolAdmin.home.label" default="School Admin Home" /> &gt;</span>
                </div>
                <!--/sidebar_top end-->

                <g:loginControl/>
                <!--/content_top end-->
            </div>
            <!--/container_top end-->

            <div class="container_bottom">
                <!--sidebar start-->
                <div class="sidebar">
                    <div class="agentHomeSidebar1" style="height: 633px;">
                        <div class="sidebar_menu">
                            <ul>
                                <li class="active"><a href="${createLink(controller: "home")}">Home</a></li>
                                <li class="parent"><a><g:message code="layout.menu.acl.label" default="Access Control List" /></a>
                                    <ul class="child ">
                                        <li><a href="${createLink(controller: "user")}"> <g:message code="layout.menu.acl.userList.label" default="User List" /></a></li>
                                        <li><a href="${createLink(controller: "user",action: "create")}"> <g:message code="layout.menu.acl.userCreate.label" default="Create New User" /></a></li>
                                        <li><a href="${createLink(controller: "userGroup")}"> <g:message code="layout.menu.acl.userGroupList.label" default="User Group List" /></a></li>
                                        <li><a href="${createLink(controller: "userGroup",action: "create")}"> <g:message code="layout.menu.acl.userGroupCreate.label" default="Create New User Group" /></a></li>
                                        <li><a href="${createLink(controller: "authority")}"> <g:message code="layout.menu.acl.authorityList.label" default="Authority List" /></a></li>
                                        <li><a href="${createLink(controller: "authority",action: "create")}"> <g:message code="layout.menu.acl.authorityCreate.label" default="Create New Authority" /></a></li>

                                        <li style="display:none;"><a href="${createLink(controller: "feature")}"><g:message code="layout.menu.acl.featureList.label" default="Feature List" /></a></li>
                                        <li style="display:none;"><a href="${createLink(controller: "feature",action: "create")}"><g:message code="layout.menu.acl.featureCreate.label" default="Create New Feature" /></a></li>
                                    </ul>
                                </li>
                                <li class="parent"><a>Configuration</a>
                                    <ul class="child">
                                        <li><a href="${createLink(controller: "bank")}">Bank</a></li>
                                        <li><a href="${createLink(controller: "country")}">Country</a></li>
                                    </ul>
                                </li>



                                <li><a href="${createLink(controller: "user", action: "edit", id: session?.user?.id)}">Change Password</a>
                                </li>
                                <li><a href="${createLink(controller: "security", action: "logout")}">Logout</a></li>
                            </ul>
                        </div>
                    </div>
                    <!--/sidebar_inner-->
                </div>
                <!--/sidebar end-->

                <!--content start-->
                <div class="content">
                    <div class="content_inner" id="contentInner">
                        <div class="content_padding">
                            <g:layoutBody/>
                        </div>
                    </div>
                    <g:javascript library="progoti"/>
                    <!--[if IE 6]><g:javascript library="ie6Fix"/><![endif]-->
                    <r:layoutResources/>
                </div>
                <!--/content end-->
            </div>
            <!--/container_bottom end-->
        </div>
        <!--/container end-->
    </div>
    <!--/inner_wrapper-->
</div>
<!--/wrapper end-->
</body>
</html>
