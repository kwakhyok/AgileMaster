<%--
  Created by IntelliJ IDEA.
  User: guo
  Date: 12-12-16
  Time: PM5:35
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta content="admin" name="layout"/>
    <title><g:message code="junjie.dashboard.title"/></title>
</head>


<body id="loggedInBody">

<div id="mainWrap">
    <g:render template="/template/header"/>
    <div id="contentWrap">



        <div id="contentWrapMain" >
            <h3><g:message code="junjie.dashboard.title"/></h3>

            <!-- your content goes here! -->
            <div id="menu1">
                <nav:render group="dashboard"/>
            </div>
            <div style=" width: 920px; margin: 0 auto">
                <legend><h4><g:message code="junjie.dashboard.gantt"/></h4></legend>
                <div class="gantt"></div>
            </div>
        </div>

    </div>
    <g:render template="/template/footer"/>
</div>



<script src="${createLinkTo(dir:'js', file:'jquery.fn.gantt.js')}"></script>
<script src="${createLinkTo(dir:'js', file:'bootstrap-tooltip.js')}"></script>
<script src="${createLinkTo(dir:'js', file:'bootstrap-popover.js')}"></script>



<script type="text/javascript">

    $(function () {

        "use strict";
        // TODO send json tasks data from server and replace the demo data
        $(".gantt").gantt({
            source:[
                {
                    name:"Sprint 0",
                    desc:"Analysis",
                    values:[
                        {
                            from:"/Date(1320192000000)/",
                            to:"/Date(1322401600000)/",
                            label:"Requirement Gathering",
                            customClass:"ganttRed"
                        }
                    ]
                },
                {
                    name:" ",
                    desc:"Scoping",
                    values:[
                        {
                            from:"/Date(1322611200000)/",
                            to:"/Date(1323302400000)/",
                            label:"Scoping",
                            customClass:"ganttRed"
                        }
                    ]
                },
                {
                    name:"Sprint 1",
                    desc:"Development",
                    values:[
                        {
                            from:"/Date(1323802400000)/",
                            to:"/Date(1325685200000)/",
                            label:"Development",
                            customClass:"ganttGreen"
                        }
                    ]
                },
                {
                    name:" ",
                    desc:"Showcasing",
                    values:[
                        {
                            from:"/Date(1325685200000)/",
                            to:"/Date(1325695200000)/",
                            label:"Showcasing",
                            customClass:"ganttBlue"
                        }
                    ]
                },
                {
                    name:"Sprint 2",
                    desc:"Development",
                    values:[
                        {
                            from:"/Date(1326785200000)/",
                            to:"/Date(1325785200000)/",
                            label:"Development",
                            customClass:"ganttGreen"
                        }
                    ]
                },
                {
                    name:" ",
                    desc:"Showcasing",
                    values:[
                        {
                            from:"/Date(1328785200000)/",
                            to:"/Date(1328905200000)/",
                            label:"Showcasing",
                            customClass:"ganttBlue"
                        }
                    ]
                },
                {
                    name:"Release Stage",
                    desc:"Training",
                    values:[
                        {
                            from:"/Date(1330011200000)/",
                            to:"/Date(1336611200000)/",
                            label:"Training",
                            customClass:"ganttOrange"
                        }
                    ]
                },
                {
                    name:" ",
                    desc:"Deployment",
                    values:[
                        {
                            from:"/Date(1336611200000)/",
                            to:"/Date(1338711200000)/",
                            label:"Deployment",
                            customClass:"ganttOrange"
                        }
                    ]
                },
                {
                    name:" ",
                    desc:"Warranty Period",
                    values:[
                        {
                            from:"/Date(1336611200000)/",
                            to:"/Date(1349711200000)/",
                            label:"Warranty Period",
                            customClass:"ganttOrange"
                        }
                    ]
                }
            ],
            navigate:"scroll",
            scale:"weeks",
            maxScale:"months",
            minScale:"days",
            itemsPerPage:10,
            onItemClick:function (data) {
                alert("Item clicked - show some details");
            },
            onAddClick:function (dt, rowId) {
                alert("Empty space clicked - add an item!");
            },
            onRender:function () {
                if (window.console && typeof console.log === "function") {
                    console.log("chart rendered");
                }
            }
        });

        $(".gantt").popover({
            selector:".bar",
            title:"I'm a popover",
            content:"And I'm the content of said popover."
        });

    });

</script>

</body>

</html>