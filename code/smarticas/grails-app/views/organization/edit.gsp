<%@ page import="com.xpi.settle.sys.Organization" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'organization.label', default: 'Organization')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="edit-organization" class="top10 content scaffold-edit" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${organizationInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${organizationInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:organizationInstance, action:'update']" method="PUT"
                class='form-horizontal'>
				<g:hiddenField name="version" value="${organizationInstance?.version}" />
                <g:render template="form"/>
                <div class='form-group'>
				<div class="col-xs-2 col-xs-offset-4">
					<g:actionSubmit class="btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</div>
                <div class="col-sm-2">
                    <g:submitButton name="reset" type="reset" class="btn btn-primary" value="${message(code:
                        'default.button.reset.label')}"/>
                </div>
                </div>
			</g:form>
		</div>
	</body>
</html>
