
<%@ page import="com.xpi.settle.sys.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
<div id="show-user" class="top10 content scaffold-show" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table class="table table-bordered">
        <tbody>
        <tr>
            <td><g:message code="user.username.label" default="Username" /></td>
            <td>
                    <g:fieldValue bean="${userInstance}" field="username"/>
            </td>
        </tr>

        <tr>
            <td><g:message code="user.email.label" default="Email" /></td>
            <td>
                    <g:fieldValue bean="${userInstance}" field="email"/>
            </td>
        </tr>

        <tr>
            <td><g:message code="user.address.label" default="Address" /></td>
            <td>
                    <g:fieldValue bean="${userInstance}" field="address"/>
            </td>
        </tr>

        <tr>
            <td><g:message code="user.phone.label" default="Phone" /></td>
            <td>
                    <g:fieldValue bean="${userInstance}" field="phone"/>
            </td>
        </tr>

        <tr>
            <td><g:message code="organization.label" default="Organization" /></td>
            <td>
                    <g:link controller="organization" action="show" id="${userInstance?.organization?.id}">${userInstance?.organization?.encodeAsHTML()}            </g:link>
            </td>
        </tr>

        <tr>
            <td><g:message code="user.name.label" default="Name" /></td>
            <td>
                    <g:fieldValue bean="${userInstance}" field="name"/>
            </td>
        </tr>

        <tr>
            <td><g:message code="user.idCard.label" default="Id Card" /></td>
            <td>
                    <g:fieldValue bean="${userInstance}" field="idCard"/>
            </td>
        </tr>

        <tr>
            <td><g:message code="user.im.label" default="Im" /></td>
            <td>
                    <g:fieldValue bean="${userInstance}" field="im"/>
            </td>
        </tr>

        <tr>
            <td><g:message code="user.memo.label" default="Memo" /></td>
            <td>
                    <g:fieldValue bean="${userInstance}" field="memo"/>
            </td>
        </tr>

        <tr>
            <td><g:message code="user.accountExpired.label" default="Account Expired" /></td>
            <td>
                    <g:formatBoolean boolean="${userInstance?.accountExpired}" />
            </td>
        </tr>

        <tr>
            <td><g:message code="user.accountLocked.label" default="Account Locked" /></td>
            <td>
                    <g:formatBoolean boolean="${userInstance?.accountLocked}" />
            </td>
        </tr>

        <tr>
            <td><g:message code="user.passwordExpired.label" default="Password Expired" /></td>
            <td>
                    <g:formatBoolean boolean="${userInstance?.passwordExpired}" />
            </td>
        </tr>


        <tr>
            <td><g:message code="dateCreated.label" default="Date Created" /></td>
            <td>
                    <g:formatDate date="${userInstance?.dateCreated}" />
            </td>
        </tr>

        <tr>
            <td><g:message code="dateUpdated.label" default="Date Updated" /></td>
            <td>
                    <g:formatDate date="${userInstance?.dateUpdated}" />
            </td>
        </tr>

        <tr>
            <td><g:message code="user.enabled.label" default="Enabled" /></td>
            <td>
                    <g:formatBoolean boolean="${userInstance?.enabled}" />
            </td>
        </tr>
        </tbody>
    </table>
    <div class='col-xs-2 col-xs-offset-5'>
        <g:link action='index'>
            <input type='button' class='btn btn-primary'
                   value="${message(code: 'return.label')}" />
        </g:link>
    </div>
    <!--
    <g:form url="[resource:userInstance, action:'delete']" method="DELETE">
        <fieldset class="buttons">
        <g:link class="edit" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
        <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
        </fieldset>
    </g:form>
    -->
</div>
</body>
</html>
