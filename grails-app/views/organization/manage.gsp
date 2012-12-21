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
    <title>企业管理</title>
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
            <div id="tabs" class="ui-tabs ui-widget ui-widget-content ui-corner-all">
                <ul class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
                    <li class="ui-corner-top ui-state-default ui-tabs-selected ui-state-active">
                        <a href="#tabs-1">Intention</a>
                    </li>
                    <li class="ui-corner-top ui-state-default">
                        <a href="#tabs-2">Registration</a>
                    </li>
                    <li class="ui-corner-top ui-state-default">
                        <a href="#tabs-3">Tender</a>
                    </li>
                    <li class="ui-corner-top ui-state-default">
                        <a href="#tabs-4">Bid</a>
                    </li>
                    <li class="ui-corner-top ui-state-default">
                        <a href="#tabs-5">Expiration</a>
                    </li>
                </ul>

                <div id="tabs-1" class="ui-tabs-panel ui-widget-content ui-corner-bottom">
                    <g:render template="templates/organizationRegister" var="${status}"/>
                </div>

                <div id="tabs-2" class="ui-tabs-panel ui-widget-content ui-corner-bottom">
                    <g:render template="templates/organizationDetail" var="${status}"/>
                </div>

                <div id="tabs-3" class="ui-tabs-panel ui-widget-content ui-corner-bottom">
                    <g:render template="templates/organizationDetail" var="${status}"/>
                </div>

                <div id="tabs-4" class="ui-tabs-panel ui-widget-content ui-corner-bottom">
                    <g:render template="templates/organizationDetail" var="${status}"/>
                </div>

                <div id="tabs-5" class="ui-tabs-panel ui-widget-content ui-corner-bottom">
                    <g:render template="templates/organizationDetail" var="${status}"/>
                </div>


            </div>
            <div class="titleWrap">
                <h1>企业档案</h1>
                <ul>
                    <li class="standardForm">
                        <select name="listmenu" placeholder="Bulk Actions">
                            <option selected="selected">Bulk Actions</option>
                            <option>Marked as 'Intention'</option>
                            <option>Marked as 'Bidding'</option>
                            <option>Marked as 'Tender'</option>
                            <option>Marked as 'Expiration'</option>
                        </select>
                    </li>
                    <li class="separator">
                        <img src="${createLinkTo(dir:'img/icons', file:'add.png')}" alt="add" />
                        <a href="#">Add New</a>
                    </li>
                </ul>
            </div>
            <g:render template="templates/organizationEntries" var="${organization}"/>
        </div>
    </div>
    <g:render template="/template/footer"/>
</div>
</body>
</html>