<div id="systemMenu">
    <ul>
        <li><g:message code="junjie.welcome"/>, ${session.user?.userName}</li>
        <li class="seperator"><a href="#"><g:message code="junjie.myaccount"/></a>
        </li><!--seperator class is used for adding the seperator background between items-->
        <li class="seperator"><g:link controller="logout"><g:message code="junjie.logout"/></g:link></li>
    </ul>
</div>

<div id="logo" style="margin-top: -6px; margin-left: 1px">
    <img src="../img/logo.png" alt="logo" style="margin-top: 0px" />
    <!-- <h1 style="color:white; font-size:250%;margin-top:0px;margin-bottom: 0px">君捷软件</h1> -->
    <div style="margin-bottom:0px;padding-bottom: 0px"><langs:selector langs="en,de,zh_CN"/></div>
</div>