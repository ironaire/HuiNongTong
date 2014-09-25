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
    <g:form controller='home' action='updateEmail' class='form-horizontal'>
        <g:hiddenField name="versionValue"
                       value="${cmdInstance?.versionValue}" />
        <g:hiddenField name="idValue"
                       value="${cmdInstance?.idValue}" />

        <table class="table table-bordered text-right">
            <tr>
                <td>
                    <div class="form-group required">
                        <label class='control-label col-xs-2' for="email">
                            <g:message code="user.email.label" default="Email" />
                        </label>
                        <div class='col-sm-4'>
                            <g:field class='form-control' type="email" name="email"
                                     maxlength="32" required="" />
                        </div>
                    </div>



                </td>
            </tr>

            <tr>
                <td>

                    <div class="form-group required">
                        <label class='control-label col-xs-2' for="password">
                            <g:message code="user.password.label"  />

                        </label>
                        <div class='col-sm-4'>
                            <g:passwordField class='form-control'
                                             name="password" id="password" />



                        </div>
                    </div>
                </td></tr>
        </table>

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
