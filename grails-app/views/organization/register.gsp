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
    <title>企业信息登记</title>
</head>

<body id="loggedInBody">
<div id="mainWrap">
    <div id="headerWrap">
        <g:render template="/template/systemMenu"/>
        <g:render template="/template/navigation"/>
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

            <g:hasErrors bean="${orgDetails}">
                <div class="errors">
                    <g:renderErrors bean="${orgDetails}" as="list"/>
                </div>
            </g:hasErrors>

            <fieldset>
                <legend>企业登记</legend>

                <div class="standardForm">
                    <g:form action="register">
                        <dl>
                            <dt><label for="code">编码</label>
                                <g:textField name="code" id="orgCode" value="${orgDetails?.code}"/></dt>
                            <dt><label for="bidStatus">投标状态</label>
                            <g:select from="['意向','已登记', '投标', '中标', '过期']" name="bidStatus" value="${orgDetails?.bidStatus}" /></dt>
                            <dt><label for="name">简称</label>
                                <g:textField name="name" id="orgName" value="${orgDetails?.name}"/></dt>
                            <dt><label for="fullName">公司全称</label>
                                <g:textField name="fullName" id="orgFullName" value="${orgDetails?.fullName}"/></dt>
                            <dt><label for="businessScope">业务范围</label>
                                <g:textField name="businessScope" value="${orgDetails?.businessScope}"/></dt>
                            <dt><label for="registrationCapital">注册资金</label>
                                <g:textField name="registrationCapital" value="${orgDetails?.registrationCapital}"/>
                            </dt>
                            <dt><label for="address">地址</label>
                                <g:textField name="address" value="${orgDetails?.address}"/></dt>
                            <dt><label for="orgEmail">Email</label>
                                <g:textField name="orgEmail" value="${orgDetails?.orgEmail}"/></dt>
                            <dt><label for="telephone">电话</label>
                                <g:textField name="telephone" value="${orgDetails?.telephone}"/></dt>
                            <dt><label for="fax">传真</label>
                                <g:textField name="fax" value="${orgDetails?.fax}"/></dt>
                            <dt><label for="memo">Others</label>
                                <g:textArea cols="5" rows="3" name="memo" value="${orgDetails?.memo}"/></dt>
                        </dl>
                        <g:submitButton name="register" value="登记"/>
                    </g:form>
                </div>
            </fieldset>
        </div>

    </div>
    <g:render template="/template/footer"/>
</div>
</body>
</html>