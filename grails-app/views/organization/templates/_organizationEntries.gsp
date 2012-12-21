<table class="listing fluid" cellpadding="0" cellspacing="0">
    <tbody>
    <tr>
        <th class="left"><input type="checkbox" name="checkbox2" value="checkbox"/></th>
        <th class="left">id</th>
        <th>Name <img src="${createLinkTo(dir: 'img/icons', file: 'arrow_down.png')}" alt="down"/><img
                src="${createLinkTo(dir: 'img/icons', file: 'arrow_up.png')}" alt="up"/></th>
        <th>Full Name <img src="${createLinkTo(dir: 'img/icons', file: 'arrow_down.png')}" alt="down"/><img
                src="${createLinkTo(dir: 'img/icons', file: 'arrow_up.png')}" alt="up"/></th>
        <th>Address <img src="${createLinkTo(dir: 'img/icons', file: 'arrow_down.png')}" alt="down"/><img
                src="${createLinkTo(dir: 'img/icons', file: 'arrow_up.png')}" alt="up"/></th>

    </tr>
    <g:each in="${organizations}" status="i" var="organization">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
            <td><input type="checkbox" name="checkbox2" value="checkbox"/></td>
            <td>${organization.id}</td>
            <td><g:link action="show"
                        id="${organization.id}">${fieldValue(bean: organization, field: 'name')}</g:link></td>
            <td>${organization.profile?.fullName}</td>
            <td>${organization.profile?.address}</td>
        </tr>
    </g:each>
    </tbody>
</table>
<div class="paginationWrap">
    <g:paginate total="${organizationTotal}" />
</div>
