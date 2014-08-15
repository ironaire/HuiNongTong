<%@ page import="com.xpi.settle.sys.Organization" %>



<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="organization.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" maxlength="32" required="" value="${organizationInstance?.code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="organization.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="32" required="" value="${organizationInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="organization.address.label" default="Address" />
		
	</label>
	<g:textArea name="address" cols="40" rows="5" maxlength="256" value="${organizationInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'leader', 'error')} ">
	<label for="leader">
		<g:message code="organization.leader.label" default="Leader" />
		
	</label>
	<g:textField name="leader" maxlength="32" value="${organizationInstance?.leader}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'contact', 'error')} ">
	<label for="contact">
		<g:message code="organization.contact.label" default="Contact" />
		
	</label>
	<g:textField name="contact" maxlength="32" value="${organizationInstance?.contact}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'memo', 'error')} ">
	<label for="memo">
		<g:message code="organization.memo.label" default="Memo" />
		
	</label>
	<g:textArea name="memo" cols="40" rows="5" maxlength="256" value="${organizationInstance?.memo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'bank', 'error')} ">
	<label for="bank">
		<g:message code="organization.bank.label" default="Bank" />
		
	</label>
	<g:textField name="bank" maxlength="32" value="${organizationInstance?.bank}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'dateUpdated', 'error')} ">
	<label for="dateUpdated">
		<g:message code="organization.dateUpdated.label" default="Date Updated" />
		
	</label>
	<g:datePicker name="dateUpdated" precision="day"  value="${organizationInstance?.dateUpdated}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'reserve1', 'error')} ">
	<label for="reserve1">
		<g:message code="organization.reserve1.label" default="Reserve1" />
		
	</label>
	<g:textArea name="reserve1" cols="40" rows="5" maxlength="256" value="${organizationInstance?.reserve1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'reserve2', 'error')} ">
	<label for="reserve2">
		<g:message code="organization.reserve2.label" default="Reserve2" />
		
	</label>
	<g:textArea name="reserve2" cols="40" rows="5" maxlength="256" value="${organizationInstance?.reserve2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'reserve3', 'error')} ">
	<label for="reserve3">
		<g:message code="organization.reserve3.label" default="Reserve3" />
		
	</label>
	<g:textArea name="reserve3" cols="40" rows="5" maxlength="256" value="${organizationInstance?.reserve3}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'level', 'error')} ">
	<label for="level">
		<g:message code="organization.level.label" default="Level" />
		
	</label>
	<g:field name="level" type="number" min="0" value="${organizationInstance.level}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'area', 'error')} required">
	<label for="area">
		<g:message code="organization.area.label" default="Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="area" name="area.id" from="${com.xpi.settle.sys.Area.list()}" optionKey="id" required="" value="${organizationInstance?.area?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'children', 'error')} ">
	<label for="children">
		<g:message code="organization.children.label" default="Children" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${organizationInstance?.children?}" var="c">
    <li><g:link controller="organization" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="organization" action="create" params="['organization.id': organizationInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'organization.label', default: 'Organization')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'parent', 'error')} required">
	<label for="parent">
		<g:message code="organization.parent.label" default="Parent" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="parent" name="parent.id" from="${com.xpi.settle.sys.Organization.list()}" optionKey="id" required="" value="${organizationInstance?.parent?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'users', 'error')} ">
	<label for="users">
		<g:message code="organization.users.label" default="Users" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${organizationInstance?.users?}" var="u">
    <li><g:link controller="user" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="user" action="create" params="['organization.id': organizationInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'user.label', default: 'User')])}</g:link>
</li>
</ul>


</div>

