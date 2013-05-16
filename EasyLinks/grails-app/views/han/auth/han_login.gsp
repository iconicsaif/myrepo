<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <title>Welcome to Health Assist Network</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
    <meta name="author" content="Jeff">

    <!-- The styles -->
    %{--<link id="bs-css" href="css/bootstrap-cerulean.css" rel="stylesheet">--}%
    <link id="bs-css" rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-cerulean.css')}" type="text/css">
    <style type="text/css">
    body {
        padding-bottom: 40px;
    }
    .sidebar-nav {
        padding: 9px 0;
    }
    </style>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-responsive.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'charisma-app.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery-ui-1.8.21.custom.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'fullcalendar.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'fullcalendar.print.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'chosen.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'uniform.default.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'colorbox.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery.cleditor.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery.noty.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'noty_theme_default.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'elfinder.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'elfinder.theme.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery.iphone.toggle.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: '/opa-icons.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'uploadify.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-responsive.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'site.css')}" type="text/css">

    <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
	  <!--<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>-->
	<![endif]-->

    <!-- The fav icon -->
    %{--<img rel="shortcut icon" src="${resource(dir: 'img', file: 'favicon.ico')}" />--}%
    <link rel="shortcut icon" href="img/favicon.ico">

</head>

<body>
<div class="container-fluid">
    <div class="row-fluid">

        <div class="row-fluid">
            <div class="span12 center login-header">
                <h2>Welcome to Health Assist Network </h2>



            </div>
            <div class="logintype">

                <img src="${resource(dir: 'img', file: 'logo1.png')}"/>
                %{--<img src="img/logo1.png">--}%
            </div>


            <div class="well span5 center login-box">


                <label class="control-label">Login Type</label>
                <div class="controls">
                    <label class="radio inline">
                        <input type="radio" id="inlineCheckbox1" value="option1">	Manager
                    </label>
                    <label class="radio inline">
                        <input type="radio" id="inlineCheckbox2" value="option2"> Therapist
                    </label>
                    <label class="radio inline">
                        <input type="radio" id="inlineCheckbox3" value="option3"> Administrator
                    </label>



                </div>

                <div class="alert alert-info">
                    Please login with your Username and Password.
                </div>
                <g:form controller="authentication" action="authenticate2" method="post" >
                    <fieldset>
                        <div class="input-prepend" title="Username" data-rel="tooltip">
                            <span class="add-on"><i class="icon-user"></i></span><input autofocus class="input-large span10" name="userName" id="username" type="text" value="admin" />
                        </div>
                        <a href="#">Forgot Username</a>
                        <div class="clearfix"></div>
                        <br />
                        <div class="input-prepend" title="Password" data-rel="tooltip">
                            <span class="add-on"><i class="icon-lock"></i></span><input class="input-large span10" name="password" id="password" type="password" value="admin123456" />
                        </div>
                        <a href="#">Forgot Password</a>
                        <div class="clearfix"></div>


                        <div class="clearfix"></div>

                        <div class="pull-right">
                            <button type="submit" class="btn btn-primary">Login In Admin</button>
                        </div>


                        <div class="pull-left" style="width:90px">

                            <form action="" method="post">
                                <button type="submit" class="btn btn-primary">Login</button>
                            </form>

                        </div>

                    </fieldset>
                </g:form>

            </div><!--/span-->

        </div><!--/row-->


    </div>
</div><!--/fluid-row-->


</div><!--/.fluid-container-->

<div class="footer">
    <center>
        <p>&copy; <a href="http://sayedkhan.tk" target="_blank">Sayed</a> 2013
        &nbsp;Powered by: <a href="#">itchelp24</a></p>
</div>




<!-- external javascript
	================================================== -->
<!-- Placed at the end of the document so the pages load faster -->

<!-- jQuery -->
<script src="js/jquery-1.7.2.min.js"></script>
<!-- jQuery UI -->
<script src="js/jquery-ui-1.8.21.custom.min.js"></script>
<!-- transition / effect library -->
<script src="js/bootstrap-transition.js"></script>
<!-- alert enhancer library -->
<script src="js/bootstrap-alert.js"></script>
<!-- modal / dialog library -->
<script src="js/bootstrap-modal.js"></script>
<!-- custom dropdown library -->
<script src="js/bootstrap-dropdown.js"></script>
<!-- scrolspy library -->
<script src="js/bootstrap-scrollspy.js"></script>
<!-- library for creating tabs -->
<script src="js/bootstrap-tab.js"></script>
<!-- library for advanced tooltip -->
<script src="js/bootstrap-tooltip.js"></script>
<!-- popover effect library -->
<script src="js/bootstrap-popover.js"></script>
<!-- button enhancer library -->
<script src="js/bootstrap-button.js"></script>
<!-- accordion library (optional, not used in demo) -->
<script src="js/bootstrap-collapse.js"></script>
<!-- carousel slideshow library (optional, not used in demo) -->
<script src="js/bootstrap-carousel.js"></script>
<!-- autocomplete library -->
<script src="js/bootstrap-typeahead.js"></script>
<!-- tour library -->
<script src="js/bootstrap-tour.js"></script>
<!-- library for cookie management -->
<script src="js/jquery.cookie.js"></script>
<!-- calander plugin -->
<script src='js/fullcalendar.min.js'></script>
<!-- data table plugin -->
<script src='js/jquery.dataTables.min.js'></script>

<!-- chart libraries start -->
<script src="js/excanvas.js"></script>
<script src="js/jquery.flot.min.js"></script>
<script src="js/jquery.flot.pie.min.js"></script>
<script src="js/jquery.flot.stack.js"></script>
<script src="js/jquery.flot.resize.min.js"></script>
<!-- chart libraries end -->

<!-- select or dropdown enhancer -->
<script src="js/jquery.chosen.min.js"></script>
<!-- checkbox, radio, and file input styler -->
<script src="js/jquery.uniform.min.js"></script>
<!-- plugin for gallery image view -->
<script src="js/jquery.colorbox.min.js"></script>
<!-- rich text editor library -->
<script src="js/jquery.cleditor.min.js"></script>
<!-- notification plugin -->
<script src="js/jquery.noty.js"></script>
<!-- file manager library -->
<script src="js/jquery.elfinder.min.js"></script>
<!-- star rating plugin -->
<script src="js/jquery.raty.min.js"></script>
<!-- for iOS style toggle switch -->
<script src="js/jquery.iphone.toggle.js"></script>
<!-- autogrowing textarea plugin -->
<script src="js/jquery.autogrow-textarea.js"></script>
<!-- multiple file upload plugin -->
<script src="js/jquery.uploadify-3.1.min.js"></script>
<!-- history.js for cross-browser state change on ajax -->
<script src="js/jquery.history.js"></script>
<!-- application script for Charisma demo -->
<script src="js/charisma.js"></script>


</body>
</html>



