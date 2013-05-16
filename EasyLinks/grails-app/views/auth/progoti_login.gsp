<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="Author" content="Progoti Systems Limited"/>
    <meta name="layout" content="progoti_main"/>
    <title>SureCash Mobile Financial Services</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <script type="text/javascript">
        $(document).ready(function(){
            var hi8 = $(window).height();
            hi8 = hi8 -20;
            $('#login_wrapper').css('height',hi8+'px');

        });

        $(document).ready(function(){
            //Examples of how to assign the ColorBox event to elements
            $(".group1").colorbox({rel:'group1'});
            $(".inline").colorbox({inline:true, width:"40%"});
        });
    </script>

</head>

<body>


<div id="login_wrapper"  style="height: 633px;">
    <div id="loginWrapper_inner">
        <!--login_block start-->
        <div class="login_block">
        <img src="${resource(dir: 'images', file: 'login_logo.png')}" alt="" />
            <div class="login_content">
                <div class="login_inner">
                    <p>If you are a registered member, you can login with your login ID and password below.</p>
                    <div class="login_form">
                        <g:form controller="authentication" action="authenticate" method="post" >
                            <div class="FormRow1"><span>Login ID</span><input type="text" name="userName" class="inputbox1 boxDefault" /></div>
                            <p class="errorMSG1">Syntax error</p><p class="errorMSG2">Entry required</p>
                            <div class="FormRow1"><span>Password</span><input type="password" name="password" class="inputbox1 boxDefault" /></div>
                            <p class="errorMSG1">Syntax error</p><p class="errorMSG2">Entry required</p>
                            <ul>
                                <li class="loginButton_li"><input class="button loginBTN" type="submit" name="" value="Login"  /></li>
                                <li><a href="#forgetPass_block" class="openPassReq_box inline">Request for Password</a></li>
                            </ul>
                        </g:form>
                    </div>
                    <!--/login_form end-->
                </div>
                <!--/login_inner end-->
            </div>
            <!--/login_content end-->
        </div>
        <!--/login_block end-->

        <div style="display:none;">
            <!--forgetPass_block start-->
            <div id="forgetPass_block">
                <form action="" method="post">
                    <div><span>Name:</span><input type="text" class="boxDefault" /></div>
                    <div><span>Login ID:</span><input type="text" class="boxDefault" /></div>
                    <div><span>Subjet:</span><input type="text" class="boxDefault" /></div>
                    <div><span>Details:</span><textarea cols="2" class="boxDefault" rows="2"></textarea></div>
                    <div><input type="submit" class="button ForgetPassBTN" value="Sent" /></div>
                </form>
            </div>
            <!--/forgetPass_block end-->
        </div>
    </div>
    <!--/loginWrapper_inner end-->
</div>
<!--/login_wrapper end test-->

<g:javascript library="progoti" ></g:javascript>
<r:layoutResources/>
</body>
</html>
