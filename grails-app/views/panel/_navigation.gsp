<div id="topNavigationWrap">
    <ul class="dropdown">
        <li class="current">
            <a href="#"><g:message code="junjie.modules.dashboard"/></a>
            <ul class="sub_menu">
                <g:each var="c" in="${grailsApplication.controllerClasses.sort {it.fullName}}">
                    <g:if test="${c.hasProperty('activiti') && c.clazz.activiti}">
                        <li><g:link controller="${c.logicalPropertyName}">${c.naturalName}</g:link>
                        <g:if test="${!c.logicalPropertyName.equals('task')}">
                            [<g:link controller="${c.logicalPropertyName}" action="start">start</g:link>]
                        </g:if>
                        </li>
                    </g:if>
                </g:each>
            </ul>
        </li>

        <li>
            <a href="#"><g:message code="junjie.menus.scale"/></a>
            <ul class="sub_menu">
                <g:each var="c" in="${grailsApplication.controllerClasses.sort() {it.fullName}}">
                    <li><g:if test="${c.hasProperty('activiti')}">
                        <g:link controller="${c.logicalPropertyName}">${c.naturalName}</g:link>
                    </g:if></li>
                </g:each>
            </ul>
        </li>

        <li>
            <a href="#"><g:message code="junjie.menus.process"/></a>
            <ul class="sub_menu">
                <li><a href="#"><g:message code="junjie.menus.mileStone"/></a></li>
                <li><a href="#"><g:message code="junjie.menus.total.process"/></a></li>
                <li>
                    <a href="#"><g:message code="junjie.menus.year.process"/></a>
                </li>
                <li><a href="#"><g:message code="junjie.menus.month.process"/></a></li>
                <li><a href="#"><g:message code="junjie.menus.week.process"/></a></li>
            </ul>
        </li>
        <li>
            <a href="#"><g:message code="junjie.menus.investment"/></a>
            <ul class="sub_menu">
                <li><a href="#"><g:message code="junjie.menus.cbs"/></a></li>
                <li><a href="#"><g:message code="junjie.menus.payment.plan"/></a></li>
                <li><a href="#"><g:message code="junjie.menus.payment.statistics"/></a></li>
            </ul>
        </li>
        <li>
            <a href="#"><g:message code="junjie.menus.supervision"/></a>
            <ul class="sub_menu">
                <li><a href="#"><g:message code="junjie.menus.meeting.notes"/></a></li>
                <li><a href="#"><g:message code="junjie.menus.supervision.monthly.report"/></a></li>
            </ul>
        </li>

        <li>
            <a href="#"><g:message code="junjie.menus.design"/></a>
            <ul class="sub_menu">
                <li><a href="#"><g:message code="junjie.menus.design.overview"/></a></li>
                <li><a href="#"><g:message code="junjie.menus.design.preliminary"/></a></li>
                <li><a href="#"><g:message code="junjie.menus.design.architecture"/></a></li>
                <li><a href="#"><g:message code="junjie.menus.design.decoration"/></a></li>
                <li><a href="#"><g:message code="junjie.menus.design.intelligent"/></a></li>
                <li><a href="#"><g:message code="junjie.menus.design.Information"/></a></li>
                <li><a href="#"><g:message code="junjie.menus.design.logistics"/></a></li>
                <li><a href="#"><g:message code="junjie.menus.design.gas"/></a></li>
                <li><a href="#"><g:message code="junjie.menus.design.laboratory"/></a></li>
                <li><a href="#"><g:message code="junjie.menus.design.static.distribution.center"/></a></li>
                <li><a href="#"><g:message code="junjie.menus.design.reproductive.center"/></a></li>
                <li><a href="#"><g:message code="junjie.menus.design.municipal"/></a></li>
                <li><a href="#"><g:message code="junjie.menus.design.landscape"/></a></li>
                <li><a href="#"><g:message code="junjie.menus.design.garage"/></a></li>
                <li><a href="#"><g:message code="junjie.menus.oriented.identity"/></a></li>
                <li><a href="#"><g:message code="junjie.menus.boiler"/></a></li>
                <li><a href="#"><g:message code="junjie.menus.kitchen"/></a></li>
                <li><a href="#"><g:message code="junjie.menus.kitchen.purification"/></a></li>
                <li><a href="#"><g:message code="junjie.menus.drinking.water"/></a></li>
                <li><a href="#"><g:message code="junjie.menus.medical.pure.water"/></a></li>
                <li><a href="#"><g:message code="junjie.menus.sewage.treatment.design"/></a></li>
            </ul>
        </li>

        <li>
            <a href="#"><g:message code="junjie.menus.information"/></a>
            <ul class="sub_menu">
                <li><a href="#"><g:message code="junjie.menus.participation.units"/></a></li>
                <li><a href="#"><g:message code="junjie.menus.contacts"/></a></li>
                <li><a href="#"><g:message code="junjie.menus.specialist"/></a></li>
                <li><a href="#"><g:message code="junjie.menus.company.information.archive"/></a></li>
            </ul>

        </li>
        <li>
            <a href="#"><g:message code="junjie.menus.contracts"/></a>
            <ul class="sub_menu">
                <li><a href="#"><g:message code="junjie.menus.contracts.ledger"/></a></li>
                <li><a href="#"><g:message code="junjie.menus.contracts.text"/></a></li>
                <li><a href="#"><g:message code="junjie.menus.contracts.implementation"/></a></li>
            </ul>

        </li>
    </ul>
</div>
