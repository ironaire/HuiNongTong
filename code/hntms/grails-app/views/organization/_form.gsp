<%@ page import="com.xpi.settle.sys.Organization" %>



<div class="form-group required">
	<label class='control-label col-xs-2' for="code">
		<g:message code="organization.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
<div class='col-xs-4'>
	<g:textField name="code" maxlength="32" required="" value="${organizationInstance?.code}"/>

</div>
</div>

<div class="form-group required">
	<label class='control-label col-xs-2' for="name">
		<g:message code="organization.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
<div class='col-xs-4'>
	<g:textField class='form-control' name="name" maxlength="32" required="" value="${organizationInstance?.name}"/>

</div>
</div>

<div class="form-group ">
	<label class='control-label col-xs-2' for="address">
		<g:message code="organization.address.label" default="Address" />
		
	</label>
<div class='col-xs-4'>
	<g:textArea class='form-control' name="address" cols="40" rows="5" maxlength="256" value="${organizationInstance?.address}"/>

</div>
</div>

<div class="form-group ">
	<label class='control-label col-xs-2' for="leader">
		<g:message code="organization.leader.label" default="Leader" />
		
	</label>
<div class='col-xs-4'>
	<g:textField class='form-control' name="leader" maxlength="32" value="${organizationInstance?.leader}"/>

</div>
</div>

<div class="form-group ">
	<label class='control-label col-xs-2' for="contact">
		<g:message code="organization.contact.label" default="Contact" />
		
	</label>
<div class='col-xs-4'>
	<g:textField class='form-control' name="contact" maxlength="32" value="${organizationInstance?.contact}"/>

</div>
</div>

<div class="form-group ">
	<label class='control-label col-xs-2' for="memo">
		<g:message code="organization.memo.label" default="Memo" />
		
	</label>
<div class='col-xs-4'>
	<g:textArea class='form-control' name="memo" cols="40" rows="5" maxlength="256" value="${organizationInstance?.memo}"/>

</div>
</div>

<div class="form-group ">
	<label class='control-label col-xs-2' for="bank">
		<g:message code="organization.bank.label" default="Bank" />
		
	</label>
<div class='col-xs-4'>
	<g:textField class='form-control' name="bank" maxlength="32" value="${organizationInstance?.bank}"/>

</div>
</div>

<div class="form-group ">
	<label class='control-label col-xs-2' for="dateUpdated">
		<g:message code="organization.dateUpdated.label" default="Date Updated" />
		
	</label>
<div class='col-xs-4'>
	<g:datePicker class='form-control' name="dateUpdated" precision="day"  value="${organizationInstance?.dateUpdated}" default="none" noSelection="['': '']" />

</div>
</div>

<div class="form-group ">
	<label class='control-label col-xs-2' for="reserve1">
		<g:message code="organization.reserve1.label" default="Reserve1" />
		
	</label>
<div class='col-xs-4'>
	<g:textArea class='form-control' name="reserve1" cols="40" rows="5" maxlength="256" value="${organizationInstance?.reserve1}"/>

</div>
</div>

<div class="form-group ">
	<label class='control-label col-xs-2' for="reserve2">
		<g:message code="organization.reserve2.label" default="Reserve2" />
		
	</label>
<div class='col-xs-4'>
	<g:textArea class='form-control' name="reserve2" cols="40" rows="5" maxlength="256" value="${organizationInstance?.reserve2}"/>

</div>
</div>

<div class="form-group ">
	<label class='control-label col-xs-2' for="reserve3">
		<g:message code="organization.reserve3.label" default="Reserve3" />
		
	</label>
<div class='col-xs-4'>
	<g:textArea class='form-control' name="reserve3" cols="40" rows="5" maxlength="256" value="${organizationInstance?.reserve3}"/>

</div>
</div>

<div class="form-group ">
	<label class='control-label col-xs-2' for="level">
		<g:message code="organization.level.label" default="Level" />
		
	</label>
<div class='col-xs-4'>
	<g:field class='form-control' name="level" type="number" min="0" value="${organizationInstance.level}"/>

</div>
</div>

<div class="form-group required">
	<label class='control-label col-xs-2' for="area">
		<g:message code="organization.area.label" default="Area" />
		<span class="required-indicator">*</span>
	</label>
<div class='col-xs-4'>
	<g:select class='form-control' id="area" name="area.id" from="${com.xpi.settle.sys.Area.list()}" optionKey="id" required="" value="${organizationInstance?.area?.id}" class="many-to-one"/>

</div>
</div>

<div class="form-group ">
	<label class='control-label col-xs-2' for="children">
		<g:message code="organization.children.label" default="Children" />
		
	</label>
<div class='col-xs-4'>
	
<ul class="one-to-many">
<g:each in="${organizationInstance?.children?}" var="c">
    <li><g:link controller="organization" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="organization" action="create" params="['organization.id': organizationInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'organization.label', default: 'Organization')])}</g:link>
</li>
</ul>


</div>
</div>

<div class="form-group required">
	<label class='control-label col-xs-2' for="parent">
		<g:message code="organization.parent.label" default="Parent" />
		<span class="required-indicator">*</span>
	</label>
<div class='col-xs-4'>
	<g:select class='form-control' id="parent" name="parent.id" from="${com.xpi.settle.sys.Organization.list()}" optionKey="id" required="" value="${organizationInstance?.parent?.id}" class="many-to-one"/>

</div>
</div>

<div class="form-group ">
	<label class='control-label col-xs-2' for="users">
		<g:message code="organization.users.label" default="Users" />
		
	</label>
<div class='col-xs-4'>
	
<ul class="one-to-many">
<g:each in="${organizationInstance?.users?}" var="u">
    <li><g:link controller="user" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="user" action="create" params="['organization.id': organizationInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'user.label', default: 'User')])}</g:link>
</li>
</ul>


</div>
</div>

