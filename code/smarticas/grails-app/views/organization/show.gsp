
<%@ page import="com.xpi.settle.sys.Organization" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'organization.label', default: 'Organization')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
<div id="show-organization" class="top10 content scaffold-show" role="main">
    <g:if test="${flash.message}">
        <div class="message text-danger text-center" role="status">${flash.message}</div>
    </g:if>
    <table class="table table-bordered">
        <tbody>
        <tr>
            <td>
                <g:message code="organization.code.label" default="Code" /></td>
            <td>
                <g:fieldValue bean="${organizationInstance}" field="code"/>
            </td>
        <tr>

        <tr>
            <td>
                <g:message code="organization.name.label" default="Name" /></td>
            <td>
                <g:fieldValue bean="${organizationInstance}" field="name"/>
            </td>
        <tr>

        <tr>
            <td>
                <g:message code="organization.area.label" default="Area" /></td>
            <td>
                <g:fieldValue bean="${organizationInstance}" field="area"/>
            </td>
        <tr>

        <tr>
            <td><g:message code="organization.level.label" default="Level" /></td>
            <td>
                <g:fieldValue bean="${organizationInstance}" field="level"/>级
            </td>
        <tr>

        <tr>
            <td>
                <g:message code="organization.address.label" default="Address" /></td>
            <td>
                <g:fieldValue bean="${organizationInstance}" field="address"/>
            </td>
        <tr>

        <tr>
            <td>
                <g:message code="organization.leader.label" default="Leader" /></td>
            <td>
                <g:fieldValue bean="${organizationInstance}" field="leader"/>
            </td>
        <tr>

        <tr>
            <td><g:message code="organization.contact.label" default="Contact" /></td>
            <td>
                <g:fieldValue bean="${organizationInstance}" field="contact"/>
            </td>
        <tr>

        <tr>
            <td><g:message code="organization.memo.label" default="Memo" /></td>
            <td>
                <g:fieldValue bean="${organizationInstance}" field="memo"/>
            </td>
        <tr>

        <tr>
            <td><g:message code="organization.area.label" default="Area" /></td>
            <td>
                <g:if test="${organizationInstance?.area}">
                    <g:link controller="area" action="show" id="${organizationInstance?.area?.id}">${organizationInstance?.area?.encodeAsHTML()}</g:link>
                </g:if>
            </td>
        <tr>


        <tr>
            <td><g:message code="organization.parent.label" default="Parent" /></td>
            <td>
                <g:if test="${organizationInstance?.parent}">
                    <g:link controller="organization" action="show" id="${organizationInstance?.parent?.id}">${organizationInstance?.parent?.encodeAsHTML()}</g:link>
                </g:if>
            </td>
        <tr>


        <tr>
            <td><g:message code="organization.children.label" default="Children" /></td>
            <td>
                <g:if test="${organizationInstance?.children}">
                    <g:each in="${organizationInstance.children}" var="c">
                        <g:link controller="organization" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link>
                    </g:each>
                </g:if>
            </td>
        </tr>

        <tr>
            <td><g:message code="organization.users.label" default="Users" /></td>
            <td>
                <g:if test="${organizationInstance?.users}">
                    <g:each in="${organizationInstance.users}" var="u">
                        <g:link controller="user" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link>
                    </g:each>
                </g:if>
            </td>
        <tr>


        <tr>
            <td><g:message code="dateCreated.label" default="Date Created" /></td>

            <td>
                <g:formatDate date="${organizationInstance?.dateCreated}" />
            </td>
        <tr>

        <tr>
            <td><g:message code="dateUpdated.label" default="Date Updated" /></td>
            <td>
                <g:formatDate date="${organizationInstance?.dateUpdated}" />
            </td>
        <tr>


        </tbody>
    </table>
    <div class='col-xs-2 col-xs-offset-5'>
        <g:link action='index'>
            <input type='button' class='btn btn-primary'
                   value="${message(code: 'return.label')}" />
        </g:link>
    </div>
    <!--
    <g:form url="[resource:organizationInstance, action:'delete']" method="DELETE">
        <fieldset class="buttons">
        <g:link class="edit" action="edit" resource="${organizationInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
        <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
        </fieldset>
    </g:form>
    -->
</div>
</body>
</html>
