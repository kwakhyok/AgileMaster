<%--
  Created by IntelliJ IDEA.
  User: guo
  Date: 12-12-7
  Time: PM3:29
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta content="admin" name="layout"/>
    <title>Project Management</title>
</head>

<body id="loggedInBody">
<div id="mainWrap">
    <div id="headerWrap">
        <g:render template="/template/systemMenu"/>
        <!-- <g:render template="/template/navigation"/> -->
    </div>

    <div id="contentWrapTop">
        <div id="contentWrapTopLeft"></div>

        <div id="contentWrapTopRight"></div>
    </div>

    <div id="contentWrap">
        <div id="contentWrapSidebar">
           <g:render template="/template/datepicker"/>
           <g:render template="/template/leftAccordion"/>
        </div>

        <div id="contentWrapMain">
            <h3>Project List</h3>

        </div>

    </div>
    <g:render template="/template/footer"/>
</div>
</body>
</html>