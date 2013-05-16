
<%@ page import="com.progoti.security.User" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="surecash_default_layout">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
    <h5 class="titel_2">Search Users</h5>
    <div class="defaultDiv">
    <g:formRemote name="searchFriendsForm"
              url="[controller:'user',action:'search']" update="listPanel">

        <div class="searchUser_block">
            <ul>
                <li><span>User Name:</span><input type="text" name="userName" class="boxDefault"  /></li>
                <li><span>Login ID:</span><input type="text" name="loginID" class="boxDefault" /></li>

                <li>
                    <span>Status:</span>
                    <select name="status" class="boxDefault">
                        <option value="all">All selected</option>
                        <option value="${true}">Active</option>
                        <option value="${false}">In Active</option>
                    </select>
                </li>
            </ul>
        </div>
        <!--/searchUser_block end-->
        <div class="searchTop">
            <input type="submit" name="" class="searchBTN button" value="Search"  />
            <input type="reset" name="" class="resetBTN" value="Reset"  />
        </div>
        <!--/searchTop-->
   </g:formRemote>
   <g:render template="surecash_inner_list" model="[userInstanceTotal:userInstanceTotal,userInstanceList:userInstanceList]"/>
    <!--/listPanel end-->
    </div>
	</body>
</html>
