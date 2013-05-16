<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="Author" content="Progoti Systems Limited"/>
    <title><g:layoutTitle default="SureCash Mobile Financial Services"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="${resource(dir: 'css/progoti', file: 'agent_style.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/progoti', file: 'colorbox.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/progoti', file: 'exe_style.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/progoti', file: 'style.css')}" type="text/css">

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
    <g:layoutHead/>
    <r:layoutResources/>
</head>


<body>

                <!--content start-->
                <g:layoutBody/>
<!--/wrapper end-->
</body>
</html>
