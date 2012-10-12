<%--
  Created by IntelliJ IDEA.
  User: yiguo
  Date: 9/22/12
  Time: 7:17 AM
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
    <div id="systemMenu">
        <ul>
            <li><g:message code="junjie.welcome"/>, ${username1}</li>
            <li class="seperator"><a href="#"><g:message code="junjie.myaccount"/></a>
            </li><!--seperator class is used for adding the seperator background between items-->
            <li class="seperator"><g:link controller="logout"><g:message code="junjie.logout"/></g:link></li>
        </ul>
    </div>

    <div id="logo">
        <!--<img src="../img/logo.png" alt="logo" /> -->
        <h1 style="color:white; font-size:250%;margin-top:0px;margin-bottom: 0px">君捷Logo</h1>

        <div style="margin-bottom:0px;padding-bottom: 0px"><langs:selector langs="en,de,zh_CN"/></div>
    </div>
    <g:render template="navigation"/>
</div>

<!--Rounded Corners For The Top - START-->
<div id="contentWrapTop">
    <div id="contentWrapTopLeft"></div>

    <div id="contentWrapTopRight"></div>
</div>
<!--Rounded Corners For The Top - END-->

<!--contentWrap START-->
<div id="contentWrap">

<!--contentWrapSidebar START-->
<div id="contentWrapSidebar">

    <div id="searchBox">
        <fieldset>
            <legend><g:message code="junjie.search"/></legend>
            <input size="15" class="formSmall" type="text"/> <input value="Go" class="button" type="submit"/>
            <h6>(<a href="#" id="advancedSearchLink">advanced search options</a>)</h6>

            <div id="advancedSearchWrap">
                <select name="listmenu">
                    <option selected="selected">Select Category</option>
                    <option>Orders</option>
                    <option>Members</option>
                </select>
                <fieldset class="labelRadioCheckbox">
                    <legend>Include Archives</legend>
                    <label for="yes" class="labelRadioCheckbox"><input name="gender" id="yes" value="Yes"
                                                                       type="radio"/>Yes</label>
                    <label for="no" class="labelRadioCheckbox"><input name="gender" id="no" value="No" checked="checked"
                                                                      type="radio"/>No</label>
                </fieldset>
            </div>
        </fieldset>
    </div>

    <fieldset>
        <legend><g:message code="junjie.calendar"/></legend>

        <div id="datepicker"></div>
    </fieldset>



    <!--accordion START-->
    <fieldset>
        <legend>Accordion Menu</legend>

        <div id="accordion"><!--The ID accordion is defined inside includes/js/custom.js. To create new accordion elements, a similar function inside "custom.js" must be added.-->
            <h3><a href="#">Section 1</a></h3>

            <div>
                <ul>
                    <li>List item one</li>
                    <li>List item two</li>
                    <li>List item three</li>
                </ul>
            </div>

            <h3><a href="#">Section 2</a></h3>

            <div>
                <p>
                    Sed non urna.
                </p>
            </div>

            <h3><a href="#">Section 3</a></h3>

            <div>
                <ul>
                    <li>List item one</li>
                    <li>List item two</li>
                    <li>List item three</li>
                </ul>
            </div>

            <h3><a href="#">Section 4</a></h3>

            <div>
                <p>
                    Cras dictum.
                </p>
            </div>
        </div>
    </fieldset>
    <!--accordion END-->
</div>
<!--contentWrapSidebar END-->

<!--contentWrapMain START-->
<div id="contentWrapMain">
<div id="crumbsWrap">
    <ul id="crumbs">
        <li><a href="#"><g:message code="junjie.modules.dashboard"/></a></li>
        <li><a href="#"><g:message code="junjie.menus.design"/></a></li>
        <li><a href="#"><g:message code="junjie.menus.medical.pure.water"/></a></li>
        <li class="bold"><g:message code="junjie.menus.boiler"/></li>
    </ul>
</div>


<div class="warningBox"><g:message code="junjie.notification.unread" args="[1]"/></div>

<h1><g:message code="junjie.modules.dashboard"/></h1>

<div id="dashboardWrap">
    <ul>
        <li>
            <h3 class="noMargin"><g:message code="junjie.menus.contracts"/></h3>

            <p><g:message code="junjie.notification.sample.contracts.summary" args="[15, 30, 8]"/></p>
        </li>
        <li>
            <h3 class="noMargin"><g:message code="junjie.menus.investment"/></h3>

            <p><g:message code="junjie.notification.sample.investment.summary" args="[15, 3, 8]"/></p>
        </li>
        <li>
            <h3 class="noMargin"><g:message code="junjie.menus.pre_clearance"/></h3>

            <p><g:message code="junjie.notification.sample.pre_clearance.summary" args="[15, 3, 10]"/></p>
        </li>
        <li>
            <h3 class="noMargin"><g:message code="junjie.menus.tender"/></h3>

            <p><g:message code="junjie.notification.sample.tender.summary" args="[134, 100, 24, 10]"/></p>
        </li>
        <li>
            <h3 class="noMargin"><g:message code="junjie.menus.design"/></h3>

            <p><g:message code="junjie.notification.sample.design.summary" args="[76.3, 5464]"/></p>
        </li>
    </ul>
</div>


<!--Charts START-->
<!--visualize and accessHide classes are required - visualize class is for styling the chart, accessHide is for hiding the original table - the id="chart" is defined in js/custom.js. For creating more charts a new similar function must be added to custom.js-->
<table id="chart" class="visualize accessHide">
    <caption><g:message code="junjie.caption.sample.report"/></caption>
    <thead>
    <tr>
        <td></td>
        <th scope="col">Jan 2010</th>
        <th scope="col">Feb 2010</th>

        <th scope="col">Mar 2010</th>
        <th scope="col">Apr 2010</th>
        <th scope="col">May 2010</th>
        <th scope="col">June 2010</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th scope="row">project 1</th>
        <td>190</td>
        <td>160</td>
        <td>40</td>
        <td>120</td>

        <td>30</td>
        <td>70</td>
    </tr>
    <tr>
        <th scope="row">project 2</th>
        <td>3</td>
        <td>40</td>

        <td>30</td>
        <td>45</td>
        <td>35</td>
        <td>49</td>
    </tr>
    <tr>
        <th scope="row">project 3</th>

        <td>10</td>
        <td>180</td>
        <td>10</td>
        <td>85</td>
        <td>25</td>
        <td>79</td>

    </tr>
    <tr>
        <th scope="row">project 4</th>
        <td>40</td>
        <td>80</td>
        <td>90</td>
        <td>25</td>

        <td>15</td>
        <td>119</td>
    </tr>
    </tbody>
</table>
<!--Charts END-->




<div class="titleWrap">
    <h1>Approved Orders</h1>
    <ul>
        <li class="standardForm">
            <select name="listmenu">
                <option selected="selected">Bulk Actions</option>
                <option>Delete Selected</option>
                <option>Edit Selected</option>
            </select>
        </li>
        <li class="seperator"><img src="../img/icons/add.png" alt="add"/> <a href="#">Add New</a></li>
    </ul>
</div>
<table class="listing fluid" cellpadding="0" cellspacing="0">
    <tbody>
    <tr>
        <th class="left"><input type="checkbox" name="checkbox2" value="checkbox"/></th>
        <th>Name Surname <img src="../img/icons/arrow_down.png" alt="down"/><img src="../img/icons/arrow_up.png"
                                                                                 alt="up"/></th>
        <th>City <img src="../img/icons/arrow_down.png" alt="down"/><img src="../img/icons/arrow_up.png" alt="up"/></th>
        <th>Country <img src="../img/icons/arrow_down.png" alt="down"/><img src="../img/icons/arrow_up.png" alt="up"/>
        </th>
        <th>Age <img src="../img/icons/arrow_down.png" alt="down"/><img src="../img/icons/arrow_up.png" alt="up"/></th>
        <th>Actions</th>
    </tr>
    <tr class="row1">
        <td><input type="checkbox" name="checkbox2" value="checkbox"/></td>
        <td>- John Doe</td>
        <td>Washington DC</td>
        <td>USA</td>
        <td>32</td>
        <td><img src="../img/icons/page_edit.png" alt="edit" width="16" height="16"/> <img src="../img/icons/add.png"
                                                                                           alt="add" width="16"
                                                                                           height="16"/> <img
                src="../img/icons/delete.png" alt="delete" width="16" height="16"/></td>
    </tr>
    <tr class="row2">
        <td><input type="checkbox" name="checkbox2" value="checkbox"/></td>
        <td>- Thierry Mugler</td>
        <td>Paris</td>
        <td>France</td>
        <td>28</td>
        <td><img src="../img/icons/page_edit.png" alt="edit" width="16" height="16"/> <img src="../img/icons/add.png"
                                                                                           alt="add" width="16"
                                                                                           height="16"/> <img
                src="../img/icons/delete.png" alt="delete" width="16" height="16"/></td>
    </tr>
    <tr class="row1">
        <td><input type="checkbox" name="checkbox3" value="checkbox"/></td>
        <td>- Jose Manta</td>
        <td>Madrid</td>
        <td>Spain</td>
        <td>21</td>
        <td><img src="../img/icons/page_edit.png" alt="edit" width="16" height="16"/> <img src="../img/icons/add.png"
                                                                                           alt="add" width="16"
                                                                                           height="16"/> <img
                src="../img/icons/delete.png" alt="delete" width="16" height="16"/></td>
    </tr>
    <tr class="row2">
        <td><input type="checkbox" name="checkbox4" value="checkbox"/></td>
        <td>- Michael Luvsum</td>
        <td>Berlin</td>
        <td>Germany</td>
        <td>22</td>
        <td><img src="../img/icons/page_edit.png" alt="edit" width="16" height="16"/> <img src="../img/icons/add.png"
                                                                                           alt="add" width="16"
                                                                                           height="16"/> <img
                src="../img/icons/delete.png" alt="delete" width="16" height="16"/></td>
    </tr>
    <tr class="row1">
        <td><input type="checkbox" name="checkbox4" value="checkbox"/></td>
        <td>- Adrian Tamoe</td>
        <td>Zurich</td>
        <td>Switzerland</td>
        <td>30</td>
        <td><img src="../img/icons/page_edit.png" alt="edit" width="16" height="16"/> <img src="../img/icons/add.png"
                                                                                           alt="add" width="16"
                                                                                           height="16"/> <img
                src="../img/icons/delete.png" alt="delete" width="16" height="16"/></td>
    </tr>
    <tr class="row2">
        <td><input type="checkbox" name="checkbox4" value="checkbox"/></td>
        <td>- George Rusen</td>
        <td>Bucharest</td>
        <td>Romania</td>
        <td>26</td>
        <td><img src="../img/icons/page_edit.png" alt="edit" width="16" height="16"/> <img src="../img/icons/add.png"
                                                                                           alt="add" width="16"
                                                                                           height="16"/> <img
                src="../img/icons/delete.png" alt="delete" width="16" height="16"/></td>
    </tr>
    <tr class="row1">
        <td><input type="checkbox" name="checkbox4" value="checkbox"/></td>
        <td>- Rodney Mullen</td>
        <td>San Francisco</td>
        <td>USA</td>
        <td>39</td>
        <td><img src="../img/icons/page_edit.png" alt="edit" width="16" height="16"/> <img src="../img/icons/add.png"
                                                                                           alt="add" width="16"
                                                                                           height="16"/> <img
                src="../img/icons/delete.png" alt="delete" width="16" height="16"/></td>
    </tr>
    <tr class="row2">
        <td><input type="checkbox" name="checkbox4" value="checkbox"/></td>
        <td>- Michael Luvsum</td>
        <td>Berlin</td>
        <td>Germany</td>
        <td>22</td>
        <td><img src="../img/icons/page_edit.png" alt="edit" width="16" height="16"/> <img src="../img/icons/add.png"
                                                                                           alt="add" width="16"
                                                                                           height="16"/> <img
                src="../img/icons/delete.png" alt="delete" width="16" height="16"/></td>
    </tr>
    <tr class="row1">
        <td><input type="checkbox" name="checkbox4" value="checkbox"/></td>
        <td>- Adrian Tamoe</td>
        <td>Zurich</td>
        <td>Switzerland</td>
        <td>30</td>
        <td><img src="../img/icons/page_edit.png" alt="edit" width="16" height="16"/> <img src="../img/icons/add.png"
                                                                                           alt="add" width="16"
                                                                                           height="16"/> <img
                src="../img/icons/delete.png" alt="delete" width="16" height="16"/></td>
    </tr>
    <tr class="row2">
        <td><input type="checkbox" name="checkbox4" value="checkbox"/></td>
        <td>- George Rusen</td>
        <td>Bucharest</td>
        <td>Romania</td>
        <td>26</td>
        <td><img src="../img/icons/page_edit.png" alt="edit" width="16" height="16"/> <img src="../img/icons/add.png"
                                                                                           alt="add" width="16"
                                                                                           height="16"/> <img
                src="../img/icons/delete.png" alt="delete" width="16" height="16"/></td>
    </tr>
    <tr class="row1">
        <td><input type="checkbox" name="checkbox4" value="checkbox"/></td>
        <td>- Rodney Mullen</td>
        <td>San Francisco</td>
        <td>USA</td>
        <td>39</td>
        <td><img src="../img/icons/page_edit.png" alt="edit" width="16" height="16"/> <img src="../img/icons/add.png"
                                                                                           alt="add" width="16"
                                                                                           height="16"/> <img
                src="../img/icons/delete.png" alt="delete" width="16" height="16"/></td>
    </tr>
    </tbody>
</table>

<div class="paginationWrap">
    <ul>
        <li class="previous-off">&laquo;Previous</li>
        <li class="active">1</li>
        <li><a href="?page=2">2</a></li>
        <li><a href="?page=3">3</a></li>
        <li><a href="?page=4">4</a></li>
        <li><a href="?page=5">5</a></li>
        <li><a href="?page=6">6</a></li>
        <li><a href="?page=7">7</a></li>
        <li class="next"><a href="?page=8">Next &raquo;</a></li>
    </ul>
</div>


<!--Tabbed Menu - START-->
<h1>Tabbed Menu</h1>

<div id="tabs"><!--The ID tabs is defined inside includes/js/custom.js. To create new tabbed menus, a similar function inside "custom.js" must be added.-->
    <ul>
        <li><a href="#tabs-1">Nunc tincidunt</a></li>
        <li><a href="#tabs-2">Proin dolor</a></li>
        <li><a href="#tabs-3">Aenean lacinia</a></li>
    </ul>

    <div id="tabs-1">
        <p>Proin elit arcu, rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin mi sit amet mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa et lorem. Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus sed magna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede varius sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc tristique tempus lectus.</p>
    </div>

    <div id="tabs-2">
        <p>Morbi tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat. Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere, felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor et purus.</p>
    </div>

    <div id="tabs-3">
        <p>Mauris eleifend est et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum non ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim commodo pellentesque. Praesent eu risus hendrerit ligula tempus pretium. Curabitur lorem enim, pretium nec, feugiat nec, luctus a, lacus.</p>

        <p>Duis cursus. Maecenas ligula eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi. Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse potenti. Donec mattis, pede vel pharetra blandit, magna ligula faucibus eros, id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed nulla mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor ac, tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus hendrerit hendrerit.</p>
    </div>
</div>
<!--Tabbed Menu - END-->

<!--Accordion - START-->
<h1>Accordion</h1>

<div class="accordionWrap">
    <div id="accordion2"
         class="acco"><!--The ID accordion2 is defined inside includes/js/custom.js. To create new accordion elements, a similar function inside "custom.js" must be added.-->
        <h3><a href="#">Section 1</a></h3>

        <div>
            <p>
                Mauris
            </p>
        </div>

        <h3><a href="#">Section 2</a></h3>

        <div>
            <p>
                Sed non urna.
            </p>
        </div>

        <h3><a href="#">Section 3</a></h3>

        <div>
            <ul>
                <li>List item one</li>
                <li>List item two</li>
                <li>List item three</li>
            </ul>
        </div>

        <h3><a href="#">Section 4</a></h3>

        <div>
            <p>
                Cras dictum.
            </p>
        </div>
    </div>
</div>
<!--Accordion - END-->


<!--Form - START-->
<h1>New User</h1>

<div class="standardForm">
    <form action="index.html" method="post">
        <label for="name">Name</label>
        <input id="name" type="text"/>
        <label for="username">Username</label>
        <input id="username" type="text"/> <span class="formError">Username can't be blank!</span>
        <label for="shortInfo">Short Info</label>
        <textarea rows="8" cols="1" class="formHuge" id="shortInfo"></textarea>

        <div><!--We place fieldsets with display-inline inside div to better position them-->
            <fieldset class="formHuge labelRadioCheckbox">
                <legend>Gender</legend>
                <label for="male" class="labelRadioCheckbox"><input name="gender" id="male" value="Male"
                                                                    type="radio"/>Male</label>
                <label for="female" class="labelRadioCheckbox"><input name="gender" id="female" value="Female"
                                                                      checked="checked" type="radio"/>Female</label>
            </fieldset> <span class="formError">Gender must be selected!</span>
        </div>
        <label for="address">Address</label>
        <input id="address" class="formHuge" type="text"/>

        <div><!--We place fieldsets with display-inline inside div to better position them-->
            <fieldset class="formHuge labelRadioCheckbox">
                <legend>Age:</legend>
                <label for="y18-25"><input name="18-25" id="y18-25" value="18-25" type="checkbox"/>18-25</label>
                <label for="y25-30"><input name="25-30" id="y25-30" value="25-30" type="checkbox"/>25-30</label>
                <label for="y30-40"><input name="30-40" id="y30-40" value="30-40"
                                           type="checkbox"/>30-40 (if more, please select this)</label>
            </fieldset>
        </div>
        <label for="password">Password</label>
        <input id="password" type="password"/><br/>

        <div><!--We need to use this div to keep the "submit button" and the "loader image" together.-->
            <input type="submit" value="Submit" class="formButton"/> <img src="../img/ajax-loader.gif"
                                                                          alt="Ajax Loader"/>
        </div>
    </form>
</div>
<!--Form - END-->


<div class="infoBox">Info message</div>

<div class="successBox">Successful operation message</div>

<div class="warningBox">Warning message</div>

<div class="errorBox">Error message</div>


<!--Images - START-->
<div class="titleWrap">
    <h1>Images</h1>
    <ul>
        <li><img src="../img/icons/add.png" alt="add"/> <a href="#">Add New</a></li>
    </ul>
</div>

<div class="imagesWrap">
    <div class="imagesListed">
        <ul>
            <li>
                <p class="imageInfo">
                    textimage.png (18.4kb)
                </p>
                <!--In order to display images inside the Lightbox, simply add them the class "colorBoxElement" (can be customized from "inc/js/custom.js"), mention the original image inside the "href" and use the "title" information for displaying info about the image.-->
                <a href="../img/image-placeholder-big.gif" title="Original Image" class="colorBoxElement"><img
                        src="../img/image-placeholder.gif" alt="image"/></a>

                <p class="imageActions">
                    <img src="../img/icons/page_white_go.png" alt="details" width="16" height="16"/> Details <img
                        src="../img/icons/page_edit.png" alt="edit" width="16" height="16"/> Edit <img
                        src="../img/icons/delete.png" alt="delete" width="16" height="16"/> Delete
                </p>
            </li>
            <li>
                <p class="imageInfo">
                    textimage.png (18.4kb)
                </p>
                <a href="../img/image-placeholder-big.gif" title="Original Image" class="colorBoxElement"><img
                        src="../img/image-placeholder.gif" alt="image"/></a>

                <p class="imageActions">
                    <img src="../img/icons/page_white_go.png" alt="details" width="16" height="16"/> Details <img
                        src="../img/icons/page_edit.png" alt="edit" width="16" height="16"/> Edit <img
                        src="../img/icons/delete.png" alt="delete" width="16" height="16"/> Delete
                </p>
            </li>
            <li>
                <p class="imageInfo">
                    textimage.png (18.4kb)
                </p>
                <a href="../img/image-placeholder-big.gif" title="Original Image" class="colorBoxElement"><img
                        src="../img/image-placeholder.gif" alt="image"/></a>

                <p class="imageActions">
                    <img src="../img/icons/page_white_go.png" alt="details" width="16" height="16"/> Details <img
                        src="../img/icons/page_edit.png" alt="edit" width="16" height="16"/> Edit <img
                        src="../img/icons/delete.png" alt="delete" width="16" height="16"/> Delete
                </p>
            </li>
            <li>
                <p class="imageInfo">
                    textimage.png (18.4kb)
                </p>
                <a href="../img/image-placeholder-big.gif" title="Original Image" class="colorBoxElement"><img
                        src="../img/image-placeholder.gif" alt="image"/></a>

                <p class="imageActions">
                    <img src="../img/icons/page_white_go.png" alt="details" width="16" height="16"/> Details <img
                        src="../img/icons/page_edit.png" alt="edit" width="16" height="16"/> Edit <img
                        src="../img/icons/delete.png" alt="delete" width="16" height="16"/> Delete
                </p>
            </li>
            <li>
                <p class="imageInfo">
                    textimage.png (18.4kb)
                </p>
                <a href="../img/image-placeholder-big.gif" title="Original Image" class="colorBoxElement"><img
                        src="../img/image-placeholder.gif" alt="image"/></a>

                <p class="imageActions">
                    <img src="../img/icons/page_white_go.png" alt="details" width="16" height="16"/> Details <img
                        src="../img/icons/page_edit.png" alt="edit" width="16" height="16"/> Edit <img
                        src="../img/icons/delete.png" alt="delete" width="16" height="16"/> Delete
                </p>
            </li>
            <li>
                <p class="imageInfo">
                    textimage.png (18.4kb)
                </p>
                <a href="../img/image-placeholder-big.gif" title="Original Image" class="colorBoxElement"><img
                        src="../img/image-placeholder.gif" alt="image"/></a>

                <p class="imageActions">
                    <img src="../img/icons/page_white_go.png" alt="details" width="16" height="16"/> Details <img
                        src="../img/icons/page_edit.png" alt="edit" width="16" height="16"/> Edit <img
                        src="../img/icons/delete.png" alt="delete" width="16" height="16"/> Delete
                </p>
            </li>

        </ul>
    </div>

    <div class="paginationWrap">
        <ul class="pagination">
            <li class="previous-off">&laquo;Previous</li>
            <li class="active">1</li>
            <li><a href="?page=2">2</a></li>
            <li><a href="?page=3">3</a></li>
            <li><a href="?page=4">4</a></li>
            <li><a href="?page=5">5</a></li>
            <li><a href="?page=6">6</a></li>
            <li><a href="?page=7">7</a></li>
            <li class="next"><a href="?page=8">Next &raquo;</a></li>
        </ul>
    </div>
</div>
<!--Images - END-->


<div id="contentTitleWrap">
    <h1>h1 - Hello There</h1>

    <h2>h2 - Hello There</h2>

    <h3>h3 - Hello There</h3>
    <h4>h4 - Hello There</h4>
    <h5>h5 - Hello There</h5>
    <h6>h6 - Hello There</h6>
</div>


<div id="contentWrapMainBottomSpacer"></div>
</div>
<!--contentWrapMain END-->
</div>
<!--contentWrap END-->

<div id="contentWrapBottom">
    <div id="contentWrapBottomLeft"></div>

    <div id="contentWrapBottomRight"></div>
</div>

<div id="footerWrap">
    2009-2010 Admin Templates
</div>

</div>
<!--mainWrap END-->
</body>
</html>