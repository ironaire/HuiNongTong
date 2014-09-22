<%@ page import="com.xpi.settle.sys.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="home">
		<title><g:message code="user.profile.label" /></title>
	</head>
	<body>
		<div class="top10" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${cmdInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${cmdInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
        <ul class="nav nav-pills table-bordered">
            <li class='active'>
                <g:link action="changeProfile" id="${params.id}">
                    <i class="glyphicon glyphicon-pencil"></i> 
                    <g:message code="user.info.edit.label"/>
                </g:link>
            </li>
        </ul>
			<g:form controller='home' action='updateProfile' class='form-horizontal'>
				<g:hiddenField name="versionValue"
                    value="${cmdInstance?.versionValue}" />
				<g:hiddenField name="idValue"
                    value="${cmdInstance?.idValue}" />
                    <div class="form-group ">
                        <label class='control-label col-xs-2' for="address">
                            <g:message code="user.address.label" default="Address" />
                            
                        </label>
                    <div class='col-sm-4'>
                        <g:textField class='form-control' name="address" value="${cmdInstance?.address}"/>

                    </div>
                    </div>

                    <div class="form-group ">
                        <label class='control-label col-xs-2' for="phone">
                            <g:message code="user.phone.label" default="Phone" />
                            
                        </label>
                    <div class='col-sm-4'>
                        <g:textField class='form-control' name="phone" value="${cmdInstance?.phone}"/>

                    </div>
                    </div>

                    <div class="form-group">
                        <label class='control-label col-xs-2' for="name">
                            <g:message code="user.name.label" default="Name" />
                            
                        </label>
                    <div class='col-sm-4'>
                        <g:textField class='form-control' name="name" value="${cmdInstance?.name}"/>

                    </div>
                    </div>

                    <div class="form-group">
                        <label class='control-label col-xs-2' for="idCard">
                            <g:message code="user.idCard.label" default="Id Card" />
                            
                        </label>
                    <div class='col-sm-4'>
                        <g:textField class='form-control' name="idCard" maxlength="32" value="${cmdInstance?.idCard}"/>

                    </div>
                    </div>

                    <div class="form-group">
                        <label class='control-label col-xs-2' for="im">
                            <g:message code="user.im.label" default="Im" />
                            
                        </label>
                    <div class='col-sm-4'>
                        <g:textField class='form-control' name="im" value="${cmdInstance?.im}"/>

                    </div>
                    </div>

                    <div class="form-group">
                        <label class='control-label col-xs-2' for="memo">
                            <g:message code="user.memo.label" default="Memo" />
                            
                        </label>
                    <div class='col-sm-4'>
                        <g:textField class='form-control' name="memo" value="${cmdInstance?.memo}"/>

                    </div>
                    </div>

                    <div class="form-group">
                        <label class='control-label col-xs-2' for="reserve1">
                            <g:message code="user.reserve1.label" default="Reserve1" />
                            
                        </label>
                    <div class='col-sm-4'>
                        <g:textArea class='form-control' name="reserve1" cols="40" rows="5" maxlength="256" value="${cmdInstance?.reserve1}"/>

                    </div>
                    </div>

                    <div class="form-group">
                        <label class='control-label col-xs-2' for="reserve2">
                            <g:message code="user.reserve2.label" default="Reserve2" />
                            
                        </label>
                    <div class='col-sm-4'>
                        <g:textArea class='form-control' name="reserve2" cols="40" rows="5" maxlength="256" value="${cmdInstance?.reserve2}"/>

                    </div>
                    </div>

                    <div class="form-group">
                        <label class='control-label col-xs-2' for="reserve3">
                            <g:message code="user.reserve3.label" default="Reserve3" />
                            
                        </label>
                    <div class='col-sm-4'>
                        <g:textArea class='form-control' name="reserve3" cols="40" rows="5" maxlength="256" value="${cmdInstance?.reserve3}"/>

                    </div>
                    </div>
				<div class="form-group">
                    <div class='col-xs-2 col-xs-offset-4'>
					<g:submitButton name="update" class="btn btn-primary"
                        value="${message(code: 'default.button.update.label')}" />
                    </div>
                <div class='col-xs-2'>
					<g:submitButton type='reset' name="reset" 
                        class="btn btn-primary" 
                        value="${message(code: 'default.button.reset.label')}" />
                </div>
				</div>
			</g:form>
		</div>
	</body>
</html>
