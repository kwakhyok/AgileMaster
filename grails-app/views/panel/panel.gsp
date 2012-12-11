<%--
  Created by IntelliJ IDEA.
  User: guo
  Date: 12-10-11
  Time: PM3:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta content="admin" name="layout"/>

</head>

<body id="loggedInBody">
<div id="mainWrap">
    <div id="headerWrap">
        <g:render template="/template/systemMenu"/>
        <!-- <g:render template="/template/navigation" /> -->
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
            <div class="warningBox"> 您有5项待办事宜需要马上处理 </div>
            <div class="infoBox"> 目前进度照周计划已经拖后3天，请关注！ </div>
            <div id="dashboardWrap">
                <ul>
                    <li>
                        <h3 class="noMargin">设计</h3>
                        <p>高压氧舱及直线加速器设计</p>
                    </li>
                    <li>
                        <h3 class="noMargin">采购</h3>
                        <p>进一步确定ICU招标采购计划</p>
                        <p>关注评审执行情况</p>
                    </li>
                    <li>
                        <h3 class="noMargin">合同</h3>
                        <p>设立合同专账</p>
                    </li>
                    <li>
                        <h3 class="noMargin">投资</h3>
                        <p>纵向费用汇总</p>
                    </li>
                    <li>
                        <h3 class="noMargin">沟通</h3>
                        <p>与参建方讨论HSE类体系文件</p>
                    </li>
                </ul>
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