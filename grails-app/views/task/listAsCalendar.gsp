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
    <title>任务日历列表</title>
</head>

<body id="loggedInBody">
<div id="mainWrap">
    <g:render template="/template/header"/>
    <div id="contentWrap">
        <div id="contentWrapSidebar">
            <g:render template="/template/datepicker"/>
            <g:render template="/template/leftAccordion"/>
        </div>

        <div id="contentWrapMain">
            <h1>Calendar</h1>

            <div id="calendar"></div>

            <div id="loading" style="display: none">loading...</div>

            <ul>
                <g:each in="${tasks}" var="task">
                    <li><div style="display: inline"> <p>${task.name} ${task.startDate.dateString} ${task.endDate.dateString}</p> </div></li>
                </g:each>
            </ul>
        </div>

    </div>
    <g:render template="/template/footer"/>
</div>
</body>

</html>