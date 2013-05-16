<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="Author" content="Progoti Systems Limited"/>
    <title><g:layoutTitle default="SureCash Mobile Financial Services"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="${resource(dir: 'css/progoti', file: 'style.css')}" type="text/css">
    <!--[if IE 6]><script type="text/javascript" src="js/ie6PngFix.js"></script><![endif]-->
    <!--[if gte IE 6]><div id="ie6_hack"><![endif]-->
    <script type="text/javascript">
        function heightPage() {
            var h1 = $('select.changeRow').val();
            if (h1 == 50) {
                $('#res25,#res100').hide();
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
                $('#res50,#res25').hide();
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
                    <span>Bank Admin Home &gt;</span>
                </div>
                <!--/sidebar_top end-->

                <g:loginControl/>
                <!--/content_top end-->
            </div>
            <!--/container_top end-->

            <div class="container_bottom">
                <!--sidebar start-->
                <div class="sidebar">
                    <div class="sidebar_inner" id="sideBar">
                        <div class="sidebar_menu">
                            <ul>
                                <li class="active"><a href="#">User Management</a></li>
                                <li><a href="#">Add a Bank User</a></li>
                                <li><a href="#">Change Password</a></li>
                                <li><a href="#">Logout</a></li>
                            </ul>
                        </div>
                    </div>
                    <!--/sidebar_inner-->
                </div>
                <!--/sidebar end-->

                <!--content start-->
                <div class="content">
                    <div class="content_inner" id="contentInner">
                        <g:layoutBody/>
                    </div>
                    <!--/content_inner end-->
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