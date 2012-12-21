<div>
    <g:form action="register" class="form-inline" style="border: 1px solid">

        <div class="control-group">
            <label class="control-label" for="code">编码</label>
            <g:textField name="code" id="orgCode" value="${orgDetails?.code}" style="background-color: #a9a9a9; "/>
        </div>

        <div class="control-group">
            <label class="control-label" name="name">简称</label>
            <g:textField name="name" id="orgName" value="${orgDetails?.name}"/>
        </div>
        <label class="control-label" for="bidStatus">投标状态</label>
        <select name="bidStatus" id="bidStatus">
            <g:each in="${com.oldwinner.BidStatus.values()}" var="status">
                <option value="${status.optionValue}">
                    ${message(code: status.name)}
                </option>
            </g:each>
        </select>

        <label class="control-label" for="fullName">公司全称</label>

        <g:textField name="fullName" id="orgFullName" value="${orgDetails?.fullName}"/>

        <label class="control-label" for="businessScope">业务范围</label>

        <g:textField name="businessScope" value="${orgDetails?.businessScope}"/>
        <label class="control-label" for="registrationCapital">注册资金</label>

        <g:textField name="registrationCapital" value="${orgDetails?.registrationCapital}"/>

        <label for="address">地址</label>
        <g:textField name="address" value="${orgDetails?.address}"/>
        <label for="orgEmail">Email</label>
        <g:textField name="orgEmail" value="${orgDetails?.orgEmail}"/>
        <label for="telephone">电话</label>
        <g:textField name="telephone" value="${orgDetails?.telephone}"/>
        <label for="fax">传真</label>
        <g:textField name="fax" value="${orgDetails?.fax}"/>
        <label for="memo">Others</label>
        <g:textArea cols="5" rows="3" name="memo" value="${orgDetails?.memo}"/>

        <g:submitButton name="register" value="登记"/>
    </g:form>
</div>