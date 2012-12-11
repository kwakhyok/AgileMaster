<%--
  Created by IntelliJ IDEA.
  User: guo
  Date: 12-10-19
  Time: PM2:19
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>Process Demo</title>
</head>

<body>

<div class="nav">
    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    </span>
</div>

<div class="body">

    <g:form action="save">
        <div class="dialog">
            <div id="message">${processDemo}</div>
            <table>
                <tbody>
                <tr class="prop">
                    <td>processVariable</td>
                    <td><g:textField name="employeeName" maxlength="50"
                                     value="${processDemoInstance?.processVariable}"/></td>
                </tr>
            </table>
        </div>

        <div class="buttons">
            <span class="button"><g:submitButton name="submit"
                                                 value="submit"/></span>
        </div>
    </g:form>

</div>

</body>
</html>