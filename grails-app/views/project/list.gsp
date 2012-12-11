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
    <g:render template="/template/header"/>
    <div id="contentWrap">
        <div id="contentWrapSidebar">
            <g:render template="/template/datepicker"/>
            <g:render template="/template/leftAccordion"/>
        </div>

        <div id="contentWrapMain">
            <h3>Project List</h3>


            <table class="listing fluid" cellpadding="0" cellspacing="0">
                <tbody>
                <tr>
                    <th class="left"><input type="checkbox" name="checkbox2" value="checkbox"/></th>
                    <th>Name <img src="${createLinkTo(dir: 'img/icons', file: 'arrow_down.png')}" alt="down"/><img
                            src="${createLinkTo(dir: 'img/icons', file: 'arrow_up.png')}" alt="up"/></th>
                    <th>Category <img src="${createLinkTo(dir: 'img/icons', file: 'arrow_down.png')}" alt="down"/><img
                            src="${createLinkTo(dir: 'img/icons', file: 'arrow_up.png')}" alt="up"/></th>
                    <th>Create Date <img src="${createLinkTo(dir: 'img/icons', file: 'arrow_down.png')}" alt="down"/><img
                            src="${createLinkTo(dir: 'img/icons', file: 'arrow_up.png')}" alt="up"/></th>

                </tr>
                <g:each in="${projects}" status="i" var="project">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        <td><input type="checkbox" name="checkbox2" value="checkbox"/></td>
                        <td><g:link action="show"
                                    id="${project.id}">${fieldValue(bean:project, field:'name')}</g:link></td>
                        <td>${project.category.name}</td>
                        <td> <h:dateFromNow date="${project.dateCreated}"/></td>
                    </tr>
                </g:each>

                </tbody>
            </table>
            <h1>${projectTotal}</h1>
            <div class="paginateButtons">
                <g:paginate total="${projectTotal}"/>
            </div>
        </div>

    </div>
    <g:render template="/template/footer"/>
</div>
</body>
</html>