<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <title> Welcome to Health Assist Network</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="bootstrap, a fully featured, responsive, HTML5, Bootstrap admin template.">
    <meta name="author" content="Sayed">

    <!-- The styles -->
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
    <link rel="shortcut icon" href="img/favicon.ico">
    %{--<img rel="favicon" src="${resource(dir: 'img', file: 'favicon.ico')}" />--}%

</head>

<body>
<!-- topbar starts -->


<!-- topbar ends -->



<div class="navbar">
    <div class="navbar-inner">

        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </a> <a class="brand" href="#">Health Assist Network</a>
        <div class="nav-collapse">
            <ul class="nav">
                <li class="frist">
                    <a href="index.html">Dashboard</a>
                </li>
                <li>
                    <a href="calender.html">File</a>
                </li>
                <li>
                    <a href="calendar.html">Edit</a>
                </li>
                <li>
                    <a href="calendar.html">View</a>
                </li>
                <li class="dropdown">
                    <a href="help.htm" class="dropdown-toggle" data-toggle="dropdown">Reports<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>

                        <li>
                            <a href="calender.html">Access Permissions</a>
                        </li>
                        <li class="divider">
                        </li>
                        <li class="nav-header">
                            Files
                        </li>
                        <li>

                        <li>
                            <a href="#">Using file version</a>
                        </li>
                    </ul>

                </li>
            </ul>
            <form class="navbar-search pull-left" action="">
                <input type="text" class="search-query span2" placeholder="Search" />
            </form>
            <ul class="nav pull-right">
                <li>
                    <a href="profile.html">${session.userName}</a>
                </li>
                <li>
                <li><a href="${createLink(controller: "security", action: "logout")}">Logout</a></li>
                    %{--<a href="login.html">Logout</a>--}%
                </li>
            </ul>

        </div>
    </div>
</div>
<div id="content" class="span12">


<div class="sortable row-fluid">


    <div class="box span4">
        <table class="table">


            <tr>
                <td>
                    <div class="progress progress-warning progress-striped active" style="width: 70px;">
                        <div class="bar" style="width: 50%"></div>
                    </div>				</td>
                <td>
                    Ducoment							</td>


            </tr>
            <tr>
                <td>
                    <div class="progress progress-success">
                        <div class="bar" style="width: 90%;"></div>
                    </div>								</td>
                <td>
                    Administration							</td>


            </tr>
            <tr>
                <td>
                    <div class="progress">
                        <div class="bar" style="width: 20%;"></div>
                    </div>								</td>
                <td>
                    Case Goal achevment							</td>



            </tr>
            <tr>
                <td>
                    <div class="progress progress-danger progress-striped">
                        <div class="bar" style="width: 20%;"></div>
                    </div>								</td>
                <td>
                    Client						</td>



            </tr>

        </table>
        <table align="center">


        </table>


    </div>

    <div class="boxs span2" >
        <br>

        <p>
            <button class="btn btn-small btn-inverse" >Add New Contact</button>
        </p>
        <button class="btn btn-small btn-success" >New Clinical Case</button>

    </p>
        <button class="btn btn-small btn-primary">Calander</button>
    </p>

        <button class="btn btn-small btn-danger" data-toggle="button" style="width:80px">Add</button>
    </div>
    <div class="box1 span5">
        <div class="btn-group pull-left">
            <br />
            <ul class="messages">
                <li class="well">
                    <p class="message">
                    <h6>
                        Today Date: 21-04-2013
                </p>

                    Current Time: 12:43
                </p>

                    Run Time:00:00:00</p>
                </h6>
                </li></ul>
        </div>

    </h6>
    </div>
</div>

<div class="row-fluid sortable">
<div class="box span7">

<div class="box-content">
<ul class="nav nav-tabs">
    <li><a data-rel="tooltip" title="5 new members." class="top-block" href="#clinical" data-toggle="tab">CLINICAL CASES <span class="notification">5</span></a></li>
    <li><a data-rel="tooltip" title="3 new members." class="top-block" href="#document" data-toggle="tab">DOCUMENT<span class="notification green">3</span></a></li>
    <span class="notification">6</span>
    <li  class="active"><a data-rel="tooltip" title="$100 new sales." class=" top-block" href="#accounts" data-toggle="tab">ACCOUNTS<span class="notification yellow">$100</span></a></li>
    <li><a data-rel="tooltip" title="6 new members." class="top-block" href="#profisonal" data-toggle="tab">PROFISONAL DEVELOPING<span class="notification">6</span></a></li>
</ul>

<input autofocus type="text" name="search" placeholder="Search" width="30px" />

<div class="pull-right">

    <select id="selectError1">
        <option>Sort By type</option>
        <option>Option 2</option>
        <option>Option 4</option>
        <option>Option 5</option>
    </select>

</div>
<div id="myTabContent" class="tab-content">
<div class="tab-pane fade in active" id="accounts">
    <p><table class="table table-bordered">
    <thead>
    <tr>
        <th>Invoice No </th>
        <th>Name </th>
        <th>Last Name </th>
        <th>Date </th>
        <th>Status</th>
        <th>Total Amount</th>
        <th>Total paid</th>
        <th>Remiming Amount</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>00001</td>
        <td>sajjad</td>
        <td>marif</td>
        <td class="center">2012/01/01</td>
        <td class="center">Open</td>
        <td class="center">100</td>
        <td class="center">50</td>
        <td class="center">50</td>
        <td class="center">
            <a href="#"
            <span class="label label-success">View</span></a>
        </td>
    </tr>
    <tr>
        <td>00002</td>
        <td>sajjad</td>
        <td>marif</td>
        <td class="center">2012/02/01</td>
        <td class="center">Close</td>
        <td class="center">100</td>
        <td class="center">50</td>
        <td class="center">50</td>
        <td class="center">
            <span class="label label-success">View</span>
        </td>
    </tr>
    <tr>
        <td>CR004</td>
        <td>sajjad</td>
        <td>marif</td>
        <td class="center">2012/02/01</td>
        <td class="center">Open</td>
        <td class="center">100</td>
        <td class="center">50</td>
        <td class="center">50</td>
        <td class="center">
            <span class="label label-success">View</span>
        </td>
    </tr>
    <tr>
        <td>CT007</td>
        <td>sajjad</td>
        <td>marif</td>
        <td class="center">2012/03/01</td>
        <td class="center">Open</td>
        <td class="center">100</td>
        <td class="center">50</td>
        <td class="center">50</td>
        <td class="center">
            <span class="label label-success">View</span>
        </td>
    </tr>
    <tr>
        <td>DR55</td>
        <td>sajjad</td>
        <td>marif</td>
        <td class="center">2012/01/21</td>
        <td class="center">Open</td>
        <td class="center">100</td>
        <td class="center">50</td>
        <td class="center">50</td>
        <td class="left">
            <p>
                <a href="#">View</a>
                <a href="#">View</a>
            </p>

        </td>
    </tr>
    </tbody>
</table></p>
</div>
<div class="tab-pane fade" id="document">
    <p><table class="table table-bordered">
    <thead>
    <tr>
        <th>Type </th>
        <th>Status </th>
        <th>Clinical Case</th>
        <th>Title</th>
        <th>Date Creat</th>
        <th>Date Modify Last</th>
        <th>Date Published</th>
        <th>Total Time</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>Initial</td>
        <td class="center">Draft</td>
        <td class="center">High School</td>
        <td class="center">Hardware</td>
        <td class="center">2012/02/01</td>
        <td class="center">2012/02/01</td>
        <td class="center">2012/02/01</td>

        <td class="center">50</td>
        <td class="center">
            <a href="#">Review</a>
            <a href="#">Print</a>
            <a href="#">Email</a>
        </td>
    </tr>
    <tr>
        <td>Initial</td>
        <td class="center">Draft</td>
        <td class="center">High School</td>
        <td class="center">Hardware</td>
        <td class="center">2012/02/01</td>
        <td class="center">2012/02/01</td>
        <td class="center">2012/02/01</td>

        <td class="center">50</td>
        <td class="center">
            <a href="#">Review</a>
            <a href="#">Print</a>
            <a href="#">Email</a>
        </td>
    </tr>
    <tr>
        <td>Initial</td>
        <td class="center">Draft</td>
        <td class="center">High School</td>
        <td class="center">Hardware</td>
        <td class="center">2012/02/01</td>
        <td class="center">2012/02/01</td>
        <td class="center">2012/02/01</td>

        <td class="center">50</td>
        <td class="center">
            <a href="#">Review</a>
            <a href="#">Print</a>
            <a href="#">Email</a>
        </td>
    </tr>
    <tr>
        <td>Initial</td>
        <td class="center">Draft</td>
        <td class="center">High School</td>
        <td class="center">Hardware</td>
        <td class="center">2012/02/01</td>
        <td class="center">2012/02/01</td>
        <td class="center">2012/02/01</td>

        <td class="center">50</td>
        <td class="center">
            <a href="#">Review</a>
            <a href="#">Print</a>
            <a href="#">Email</a>
        </td>
    </tr>
    <tr>
        <td>Initial</td>
        <td class="center">Draft</td>
        <td class="center">High School</td>
        <td class="center">Hardware</td>
        <td class="center">2012/02/01</td>
        <td class="center">2012/02/01</td>
        <td class="center">2012/02/01</td>

        <td class="center">50</td>
        <td class="center">
            <a href="#">Review</a>
            <a href="#">Print</a>
            <a href="#">Email</a>
        </td>
    </tr>
    </tbody>
</table></p>
</div>
<div class="tab-pane" id="clinical">

    <p><table class="table table-bordered">
    <thead>
    <tr>
        <th>Name </th>
        <th>Last</th>
        <th>Refferrel Receiv</th>
        <th>Next Boking</th>
        <th>Action</th>
        <th>Status</th>


    </tr>
    </thead>
    <tbody>
    <tr>
        <td>Sajid</td>
        <td class="center">Hasan</td>
        <td class="center">2012/01/01</td>

        <td class="center">2012/01/01</td>

        <td class="center"><a href="#"
            <span class="label label-success">View</span></a></td>
        <td class="center">
            <a href="#"
            <span class="label label-success">Open</span></a>
        </td>
    </tr>
    <tr>
        <td>Sajid</td>
        <td class="center">Hasan</td>
        <td class="center">2012/01/01</td>

        <td class="center">2012/01/01</td>

        <td class="center"><a href="#"
            <span class="label label-success">View</span></a></td>
        <td class="center">
            <a href="#"
            <span class="label label-success">Open</span></a>
        </td>
    </tr>
    <tr>
        <td>Sajid</td>
        <td class="center">Hasan</td>
        <td class="center">2012/01/01</td>

        <td class="center">2012/01/01</td>

        <td class="center"><a href="#"
            <span class="label label-success">View</span></a></td>
        <td class="center">
            <a href="#"
            <span class="label label-success">Open</span></a>
        </td>
    </tr>
    <tr>
        <td>Sajid</td>
        <td class="center">Hasan</td>
        <td class="center">2012/01/01</td>

        <td class="center">2012/01/01</td>

        <td class="center"><a href="#"
            <span class="label label-success">View</span></a></td>
        <td class="center">
            <a href="#"
            <span class="label label-success">Open</span></a>
        </td>
    </tr>
    <tr>
        <td>Sayed</td>
        <td class="center">Khan</td>
        <td class="center">2012/01/01</td>

        <td class="center">2012/01/01</td>

        <td class="center"><a href="#"
            <span class="label label-success">View</span></a></td>
        <td class="center">
            <a href="#"
            <span class="label label-success">Open</span></a>
        </td>
    </tr>
    </tbody>
</table></p>
</div>
<div class="tab-pane" id="profisonal">
    <h3>Developing</small></h3>
    <p><table class="table table-bordered">
    <thead>
    <tr>
        <th>Type </th>
        <th>Status </th>
        <th>Clinical Case</th>
        <th>Title</th>
        <th>Date Creat</th>
        <th>Date Modify Last</th>
        <th>Date Published</th>
        <th>Total Time</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>Initial</td>
        <td class="center">Draft</td>
        <td class="center">High School</td>
        <td class="center">Hardware</td>
        <td class="center">2012/02/01</td>
        <td class="center">2012/02/01</td>
        <td class="center">2012/02/01</td>

        <td class="center">50</td>
        <td class="center">
            <a href="#">Review</a>
            <a href="#">Print</a>
            <a href="#">Email</a>
        </td>
    </tr>
    <tr>
        <td>Initial</td>
        <td class="center">Draft</td>
        <td class="center">High School</td>
        <td class="center">Hardware</td>
        <td class="center">2012/02/01</td>
        <td class="center">2012/02/01</td>
        <td class="center">2012/02/01</td>

        <td class="center">50</td>
        <td class="center">
            <a href="#">Review</a>
            <a href="#">Print</a>
            <a href="#">Email</a>
        </td>
    </tr>
    <tr>
        <td>Initial</td>
        <td class="center">Draft</td>
        <td class="center">High School</td>
        <td class="center">Hardware</td>
        <td class="center">2012/02/01</td>
        <td class="center">2012/02/01</td>
        <td class="center">2012/02/01</td>

        <td class="center">50</td>
        <td class="center">
            <a href="#">Review</a>
            <a href="#">Print</a>
            <a href="#">Email</a>
        </td>
    </tr>
    <tr>
        <td>Initial</td>
        <td class="center">Draft</td>
        <td class="center">High School</td>
        <td class="center">Hardware</td>
        <td class="center">2012/02/01</td>
        <td class="center">2012/02/01</td>
        <td class="center">2012/02/01</td>

        <td class="center">50</td>
        <td class="center">
            <a href="#">Review</a>
            <a href="#">Print</a>
            <a href="#">Email</a>
        </td>
    </tr>
    <tr>
        <td>Initial</td>
        <td class="center">Draft</td>
        <td class="center">High School</td>
        <td class="center">Hardware</td>
        <td class="center">2012/02/01</td>
        <td class="center">2012/02/01</td>
        <td class="center">2012/02/01</td>

        <td class="center">50</td>
        <td class="center">
            <a href="#">Review</a>
            <a href="#">Print</a>
            <a href="#">Email</a>
        </td>
    </tr>
    </tbody>
</table></p>
</div>

</div>
</div>
</div><!--/span-->
<!--/span-->
<div class="box span5">

    <span class="btn">Task Note</span>
    <br />
    <br />

    &nbsp;&nbsp;<input autofocus type="text" name="search" placeholder="search" style="width:70px"/>
    <div class="pull-right">

        <select id="selectError1" style="width:80px">
            <option>Sort By type</option>
            <option>Option 2</option>
            <option>Option 4</option>
            <option>Option 5</option>
        </select>
        &nbsp;&nbsp;
    </div>


    <p class="clearfix">

    <div class="pull-right">
        <input type="text" id="from" name="from"  class="tcal" placeholder="Finish" style="width:80%";>
    </div>

    <div class="pull-right">
        <input type="text" id="to" name="to"  class="tcal" placeholder="Start" style="width:80%";>
    </div>


    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Type</th>
            <th>Due Date</th>
            <th>Title</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>Duc</td>
            <td class="center">2012/01/01</td>
            <td class="center">next</td>
            <td class="center"><a  href="#">View </a> <a href="#"> Edit </a> <a href="#"> Delete</a></td>
        </tr>
        <tr>
            <td>Confrm</td>
            <td class="center">2012/02/01</td>
            <td class="center">booking</td>
            <td class="center"><a  href="#">View </a> <a href="#"> Edit </a> <a href="#"> Delete</a></td>
        </tr>
        <tr>
            <td>Docu</td>
            <td class="center">2012/02/01</td>
            <td class="center">Admin</td>
            <td class="center"><a  href="#">View </a> <a href="#"> Edit </a> <a href="#"> Delete</a></td>
        </tr>
        <tr>
            <td>Booking</td>
            <td class="center">2012/03/01</td>
            <td class="center">nexts</td>
            <td class="center">
                <a  href="#">

                    View
                </a>
                <a href="#">

                    Edit
                </a>
                <a href="#">

                    Delete
                </a>
            </td>
        </tr>
        <tr>
            <td>Admin</td>
            <td class="center">2012/01/21</td>
            <td class="center">Timesheet</td>
            <td class="center"><a  href="#">View </a> <a href="#"> Edit </a> <a href="#"> Delete</a></td>
        </tr>
        </tbody>
    </table></p>

</div>
</div><!--/span-->
</div><!--/row-->

<div class="row-fluid sortable">
    <!--/span-->
    <!--/span-->
    <!--/span-->
</div>
<!--/row-->




<!-- content ends -->
</div><!--/#content.span10-->
</div><!--/fluid-row-->

<hr>

<div class="modal hide fade" id="myModal">
    <div class="modal-header">

    </div>
    <div class="modal-footer">
        <a href="#" class="btn" data-dismiss="modal">Close</a>
        <a href="#" class="btn btn-primary">Save changes</a>
    </div>
</div>

<div class="footer">
    <center>
        <p>&copy; <a href="http://sayedkhan.tk" target="_blank">Sayed</a> 2013
        &nbsp;Powered by: <a href="#">itchelp24</a></p>
</div>

</div><!--/.fluid-container-->
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
<script src="print.js"></script>



</body>
</html>
