<%@ page import="com.xpi.settle.sys.User" %>

<div class="form-group required">
	<label class='control-label col-xs-2' for="username">
		<g:message code="user.username.label" default="Username" />
	</label>
<div class='col-sm-4'>
	<g:textField class='form-control' name="username" required=""
        value="${userInstance?.username}" />

</div>
</div>

<div class="form-group required">
	<label class='control-label col-xs-2' for="password">
		<g:message code="user.password.label" default="Password" />
	</label>
<div class='col-sm-4'>
	<g:passwordField class='form-control' name="password" required="" />

</div>
</div>

<div class="form-group required">
	<label class='control-label col-xs-2' for="email">
		<g:message code="user.email.label" default="Email" />
	</label>
<div class='col-sm-4'>
	<g:field class='form-control' type="email" name="email" maxlength="32" required="" value="${userInstance?.email}"/>

</div>
</div>

<div class="form-group ">
	<label class='control-label col-xs-2' for="address">
		<g:message code="user.address.label" default="Address" />
		
	</label>
<div class='col-sm-4'>
	<g:textField class='form-control' name="address" value="${userInstance?.address}"/>

</div>
</div>

<div class="form-group ">
	<label class='control-label col-xs-2' for="phone">
		<g:message code="user.phone.label" default="Phone" />
		
	</label>
<div class='col-sm-4'>
	<g:textField class='form-control' name="phone" value="${userInstance?.phone}"/>

</div>
</div>

<div class="form-group required">
	<label class='control-label col-xs-2' for="organization">
		<g:message code="organization.label" default="Organization" />
	</label>
<div class='col-sm-4'>
	<g:select class='form-control' id="organization" name="organization.id"
    from="${com.xpi.settle.sys.Organization.list()}" optionKey="id" required="" value="${userInstance?.organization?.id}" class="many-to-one"/>

</div>
</div>

<div class="form-group">
	<label class='control-label col-xs-2' for="name">
		<g:message code="user.name.label" default="Name" />
		
	</label>
<div class='col-sm-4'>
	<g:textField class='form-control' name="name" value="${userInstance?.name}"/>

</div>
</div>

<div class="form-group">
	<label class='control-label col-xs-2' for="idCard">
		<g:message code="user.idCard.label" default="Id Card" />
		
	</label>
<div class='col-sm-4'>
	<g:textField class='form-control' name="idCard" maxlength="32" value="${userInstance?.idCard}"/>

</div>
</div>

<div class="form-group">
	<label class='control-label col-xs-2' for="im">
		<g:message code="user.im.label" default="Im" />
		
	</label>
<div class='col-sm-4'>
	<g:textField class='form-control' name="im" value="${userInstance?.im}"/>

</div>
</div>

<div class="form-group">
	<label class='control-label col-xs-2' for="memo">
		<g:message code="user.memo.label" default="Memo" />
		
	</label>
<div class='col-sm-4'>
	<g:textField class='form-control' name="memo" value="${userInstance?.memo}"/>

</div>
</div>

<div class="form-group">
	<label class='control-label col-xs-2' for="reserve1">
		<g:message code="user.reserve1.label" default="Reserve1" />
		
	</label>
<div class='col-sm-4'>
	<g:textArea class='form-control' name="reserve1" cols="40" rows="5" maxlength="256" value="${userInstance?.reserve1}"/>

</div>
</div>

<div class="form-group">
	<label class='control-label col-xs-2' for="reserve2">
		<g:message code="user.reserve2.label" default="Reserve2" />
		
	</label>
<div class='col-sm-4'>
	<g:textArea class='form-control' name="reserve2" cols="40" rows="5" maxlength="256" value="${userInstance?.reserve2}"/>

</div>
</div>

<div class="form-group">
	<label class='control-label col-xs-2' for="reserve3">
		<g:message code="user.reserve3.label" default="Reserve3" />
		
	</label>
<div class='col-sm-4'>
	<g:textArea class='form-control' name="reserve3" cols="40" rows="5" maxlength="256" value="${userInstance?.reserve3}"/>

</div>
</div>

<div class="form-group required">
	<label class='control-label col-xs-2' for="role">
		<g:message code="role.label" />
	</label>
<div class='col-sm-4'>
	<g:select class='form-control' id="role" name="role"
    from="${com.xpi.settle.sys.Role.list()}" optionKey="id" required=""
    value="${role?.id}" class="many-to-one"/>

</div>
</div>

<div class="form-group required">
	<label class='control-label col-xs-2' for="enabled">
		<g:message code="user.enabled.label" default="Enabled" />
		
	</label>
<div class='col-sm-4'>
	<g:checkBox class='form-control' name="enabled" value="${userInstance?.enabled}" />

</div>
</div>

