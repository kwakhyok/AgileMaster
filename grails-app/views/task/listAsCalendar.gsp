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
    <link rel="stylesheet" href="${createLinkTo(dir:'css', file:'fullcalendar.css')}"/>
    <script type="text/javascript" src="${createLinkTo(dir:'js', file:'fullcalendar.js')}"></script>
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
<script type="text/javascript">

    // FULLCALENDAR START

    $(function () {
        $('#calendar').fullCalendar({
            header:{
                left:'prev,next today',
                center:'title',
                right:'month,basicWeek,basicDay'
            },
            events:function (start, end, callback) {
                $.getJSON("listAsJson",
                        {start:start.getTime(), end:end.getTime()},
                        function (result) {
                            for (var i = 0; i < result.length; i++) {
                                result[i].start = $.fullCalendar.parseISO8601(result[i].start, false);
                                result[i].end = $.fullCalendar.parseISO8601(result[i].end, false);
                            }
                            callback(result);
                        });
            },
            editable:true,

            eventRender:function (event, element) {
                // render event details using qTip
                element.qtip({
                    content:'<p><b>Description</b>:<br/>' + calEvent.description + '</p><br/>\
 <p><b>Start</b>:<br/>' + calEvent.start + '</p><br/>\
 <p><b>End</b>:<br/>' + calEvent.end + '</p><br/>\
 <p><input type="button" onclick=\"cancelEvent(' + calEvent.id + ');\"\
 value=\"Cancel\"></p>',
                    position:{
                        corner:{
                            target:'rightTop',
                            tooltip:'leftBottom'
                        }
                    },
                    show:{solo:true},
                    hide:{
                        delay:800
                    },
                    style:{
                        border:{
                            radius:8,
                            width:3
                        },
                        padding:'5px 15px',
                        tip:true,
                        name:'cream' // And style it with the preset dark theme
                    }
                });
                return element;
            }




        });
    });
    // FULL CALENDAR END
</script>
</body>

</html>