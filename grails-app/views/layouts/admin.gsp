<%--
  Created by IntelliJ IDEA.
  User: yiguo
  Date: 9/22/12
  Time: 7:19 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link rel="stylesheet" href="${createLinkTo(dir:'css', file: 'all.css')}"></link>
    <link rel="stylesheet" href="${createLinkTo(dir:'css/custom-theme', file: 'jquery-ui-1.7.2.custom.css')}"></link>
    <link rel="stylesheet" href="${createLinkTo(dir:'css', file:'jquery.wysiwyg.css')}"></link>
    <link rel="stylesheet" href="${createLinkTo(dir:'css', file:'visualize.css')}"></link>
    <link rel="stylesheet" href="${createLinkTo(dir:'css', file:'colorbox.css')}"></link>

    <script type="text/javascript" src="${createLinkTo(dir:'js',file:'jquery-1.4.2.min.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir:'js',file:'jquery-ui-1.7.2.custom.min.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir:'js',file:'jquery.wysiwyg.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir:'js', file:'excanvas.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir:'js',file:'visualize.jQuery.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir:'js', file:'jquery.colorbox-min.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir:'js', file:'custom.js')}"></script>


    <title><g:layoutTitle default="君捷控制面板"/></title>
</head>
<body id="loggedInBody">
   <g:layoutBody />
</body>
</html>