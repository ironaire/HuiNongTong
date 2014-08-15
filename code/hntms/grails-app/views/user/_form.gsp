<%@ page import="com.xpi.settle.sys.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${userInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${userInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" maxlength="32" required="" value="${userInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="user.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${userInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'phone', 'error')} ">
	<label for="phone">
		<g:message code="user.phone.label" default="Phone" />
		
	</label>
	<g:textField name="phone" value="${userInstance?.phone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'dateUpdated', 'error')} ">
	<label for="dateUpdated">
		<g:message code="user.dateUpdated.label" default="Date Updated" />
		
	</label>
	<g:datePicker name="dateUpdated" precision="day"  value="${userInstance?.dateUpdated}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'organization', 'error')} required">
	<label for="organization">
		<g:message code="user.organization.label" default="Organization" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="organization" name="organization.id" from="${com.xpi.settle.sys.Organization.list()}" optionKey="id" required="" value="${userInstance?.organization?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="user.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${userInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'idCard', 'error')} ">
	<label for="idCard">
		<g:message code="user.idCard.label" default="Id Card" />
		
	</label>
	<g:textField name="idCard" maxlength="32" value="${userInstance?.idCard}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'im', 'error')} ">
	<label for="im">
		<g:message code="user.im.label" default="Im" />
		
	</label>
	<g:textField name="im" value="${userInstance?.im}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'memo', 'error')} ">
	<label for="memo">
		<g:message code="user.memo.label" default="Memo" />
		
	</label>
	<g:textField name="memo" value="${userInstance?.memo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'reserve1', 'error')} ">
	<label for="reserve1">
		<g:message code="user.reserve1.label" default="Reserve1" />
		
	</label>
	<g:textArea name="reserve1" cols="40" rows="5" maxlength="256" value="${userInstance?.reserve1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'reserve2', 'error')} ">
	<label for="reserve2">
		<g:message code="user.reserve2.label" default="Reserve2" />
		
	</label>
	<g:textArea name="reserve2" cols="40" rows="5" maxlength="256" value="${userInstance?.reserve2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'reserve3', 'error')} ">
	<label for="reserve3">
		<g:message code="user.reserve3.label" default="Reserve3" />
		
	</label>
	<g:textArea name="reserve3" cols="40" rows="5" maxlength="256" value="${userInstance?.reserve3}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="user.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${userInstance?.accountExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="user.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${userInstance?.accountLocked}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="user.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${userInstance?.enabled}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="user.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}" />

</div>

