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
    <title>User Management</title>
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
            <div id="datepicker"></div>
            <fieldset>
                <legend>近期待办</legend>

                <div id="accordion">
                    <!--The ID accordion is defined inside includes/js/custom.js. To create new accordion elements, a similar function inside "custom.js" must be added.-->
                    <h3><a href="#">标段划分</a></h3>

                    <div>
                        <ul>
                            <li>WBS图未报审批</li>
                            <li>历史项目归档</li>
                            <li>精细划分</li>
                        </ul>
                    </div>

                    <h3><a href="#">采购</a></h3>

                    <div>
                        <p>
                            预估招标金额
                        </p>
                    </div>

                    <h3><a href="#">合同管理</a></h3>

                    <div>
                        <ul>
                            <li>手术室合同敲定</li>
                            <li>血透中心设计合同</li>
                            <li>物流系统合同</li>
                        </ul>
                    </div>

                    <h3><a href="#">投资管理</a></h3>

                    <div>
                        <p>
                            资金需求计划待审批
                        </p>
                    </div>
                </div>
            </fieldset>
        </div>

        <div id="contentWrapMain">
            <h3>User List</h3>


            <table class="listing fluid" cellpadding="0" cellspacing="0">
                <tbody>
                <tr>
                    <th class="left"><input type="checkbox" name="checkbox2" value="checkbox"/></th>
                    <th>Name <img src="${createLinkTo(dir: 'img/icons', file: 'arrow_down.png')}" alt="down"/><img
                            src="${createLinkTo(dir: 'img/icons', file: 'arrow_up.png')}" alt="up"/></th>
                    <th>Email <img src="${createLinkTo(dir: 'img/icons', file: 'arrow_down.png')}" alt="down"/><img
                            src="${createLinkTo(dir: 'img/icons', file: 'arrow_up.png')}" alt="up"/></th>
                    <th>First name<img src="${createLinkTo(dir: 'img/icons', file: 'arrow_down.png')}" alt="down"/><img
                            src="${createLinkTo(dir: 'img/icons', file: 'arrow_up.png')}" alt="up"/></th>
                    <th>Last name<img src="${createLinkTo(dir: 'img/icons', file: 'arrow_down.png')}" alt="down"/><img
                            src="${createLinkTo(dir: 'img/icons', file: 'arrow_up.png')}" alt="up"/></th>
                </tr>
                <g:each in="${users}" status="i" var="user">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        <td><input type="checkbox" name="checkbox2" value="checkbox"/></td>
                        <td><g:link action="show"
                                    id="${user.id}">${fieldValue(bean: user, field: 'username')}</g:link></td>
                        <td>${fieldValue(bean: user, field: 'email')}</td>
                        <td>${fieldValue(bean: user, field: 'firstName')}</td>
                        <td>${fieldValue(bean: user, field: 'lastName')}</td>
                    </tr>
                </g:each>

                </tbody>
            </table>
           <div class="paginateButtons">
               <g:paginate total="${userTotal}"/>
           </div>
        </div>

    </div>

    <div id="contentWrapBottom">
        <div id="contentWrapBottomLeft"></div>

        <div id="contentWrapBottomRight"></div>
    </div>

    <div id="footerWrap">
        2009-2014 AgileMaster
    </div>
</div>
</body>
</html>