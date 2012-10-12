<%--
  Created by IntelliJ IDEA.
  User: yiguo
  Date: 9/20/12
  Time: 4:11 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>君捷软件</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <style media="all" type="text/css">@import "css/all.css";</style>
    <style media="all" type="text/css">@import "css/custom-theme/jquery-ui-1.7.2.custom.css";</style>
    <style media="all" type="text/css">@import "css/jquery.wysiwyg.css";</style>
    <style media="all" type="text/css">@import "css/visualize.css";</style>
    <style media="all" type="text/css">@import "css/colorbox.css";</style>


    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.7.2.custom.min.js"></script>
    <script type="text/javascript" src="js/jquery.wysiwyg.js"></script>
    <script type="text/javascript" src="js/excanvas.js"></script>
    <script type="text/javascript" src="js/visualize.jQuery.js"></script>
    <script type="text/javascript" src="js/jquery.colorbox-min.js"></script>
    <script type="text/javascript" src="js/custom.js"></script>
    <title>君捷软件</title>

</head>

<body id="loginBody">
<div id="loginMainWrap">
    <div id="loginLogo">
        <div style="width: 200; font-size: 50px; margin-left: auto; margin-right: auto; color:white">君捷</div>
    </div>

    <!--Rounded Corners For The Top - START-->
    <div id="contentWrapTop">
        <div id="contentWrapTopLeft"></div>

        <div id="contentWrapTopRight"></div>
    </div>
    <!--Rounded Corners For The Top - END-->

    <div id="contentWrap">
        <div class="standardForm loginForm">
            <div id="login">
                <h1><g:if test='${flash.message}'>
                    <div class='login_message'>${flash.message}</div>
                </g:if></h1>

                <form action="${postUrl}" method="POST" id="loginForm">
                    <label for="username"><g:message code="springSecurity.login.username.label"/></label>
                    <input id="username" name="j_username" tabindex="1" type="text"> <span class="formError">username is required!</span>
                    <label for="password"><g:message code="springSecurity.login.password.label"/></label>
                    <input id="password" tabindex="2" type="password"><br/>
                    <p id="remember_me_holder">
                        <input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me'
                               <g:if test='${hasCookie}'>checked='checked'</g:if>/>
                        <label for='remember_me' style="display: inline;"><g:message code="springSecurity.login.remember.me.label"/></label>
                    </p>
                    <div id="loginFormSubmitWrap"><!--We need to use this div as a IE6 fix to prevent and mis-floats-->
                        <div class="loginFormSubmit"><!--We need to use this div to keep the "submit button" and the "loader image" together.-->
                            <a href="index.html"><input type="submit" value="${message(code: "springSecurity.login.button")}" class="formButton"/></a> <img
                                src="img/ajax-loader.gif" alt="Ajax Loader"/>
                        </div>

                        <div class="loginFormForgotPassword">
                            (<a href="#"
                                id="forgotPasswordLink">Forgot Password</a>)<!--The ID forgotPasswordLink is defined inside includes/js/custom.js-->
                        </div>
                    </div>
                </form>
            </div>

            <div id="forgotPassword">
                <h1>Forgot Password</h1>

                <form action="index.html" method="post">
                    <label for="username">Username</label>
                    <input id="username" tabindex="1" type="text"> <span
                        class="formError">username is required!</span><br/>

                    <div id="loginFormSubmitWrap"><!--We need to use this div as a IE6 fix to prevent and mis-floats-->
                        <div class="loginFormSubmit"><!--We need to use this div to keep the "submit button" and the "loader image" together.-->
                            <input type="submit" value="Submit" class="formButton"/> <img src="img/ajax-loader.gif"
                                                                                          alt="Ajax Loader"/>
                        </div>

                        <div class="loginFormForgotPassword">
                            (<a href="#"
                                id="loginLink">Back To Login</a>)<!--The ID loginLink is defined inside includes/js/custom.js-->
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!--Rounded Corners For The Bottom - START-->
    <div id="contentWrapBottom">
        <div id="contentWrapBottomLeftLogin"></div>

        <div id="contentWrapBottomRightLogin"></div>
    </div>
    <!--Rounded Corners For The Bottom - START-->

    <div id="footerWrapLogin">
        2011-2013 君捷软件
    </div>

</div>
<script type='text/javascript'>
    <!--
    (function () {
        document.forms['loginForm'].elements['j_username'].focus();
    })();
    // -->
</script>
</body>

</html>