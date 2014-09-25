
<%@ page import="com.xpi.settle.sys.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="home">
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
				<g:if test="${userInstance?.username}">
				<tr>
					<td><g:message code="user.username.label" default="Username" /></td>
					
						<td><g:fieldValue bean="${userInstance}" field="username"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${userInstance?.email}">
				<tr>
					<td><g:message code="user.email.label" default="Email" /></td>
					
						<td><g:fieldValue bean="${userInstance}" field="email"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${userInstance?.address}">
				<tr>
					<td><g:message code="user.address.label" default="Address" /></td>
					
						<td><g:fieldValue bean="${userInstance}" field="address"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${userInstance?.phone}">
				<tr>
					<td><g:message code="user.phone.label" default="Phone" /></td>
					
						<td><g:fieldValue bean="${userInstance}" field="phone"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${userInstance?.dateCreated}">
				<tr>
					<td><g:message code="dateCreated.label" default="Date Created" /></td>
					
						<td><g:formatDate date="${userInstance?.dateCreated}" /></td>
					
				</tr>
				</g:if>
			
				<g:if test="${userInstance?.dateUpdated}">
				<tr>
					<td><g:message code="dateUpdated.label" default="Date Updated" /></td>
					
						<td><g:formatDate date="${userInstance?.dateUpdated}" /></td>
					
				</tr>
				</g:if>
			
				<g:if test="${userInstance?.organization}">
				<tr>
					<td><g:message code="organization.label" default="Organization" /></td>
					
						<td><g:link controller="organization" action="show" id="${userInstance?.organization?.id}">${userInstance?.organization?.encodeAsHTML()}</g:link></td>
					
				</tr>
				</g:if>
			
				<g:if test="${userInstance?.name}">
				<tr>
					<td><g:message code="user.name.label" default="Name" /></td>
					
						<td><g:fieldValue bean="${userInstance}" field="name"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${userInstance?.idCard}">
				<tr>
					<td><g:message code="user.idCard.label" default="Id Card" /></td>
					
						<td><g:fieldValue bean="${userInstance}" field="idCard"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${userInstance?.im}">
				<tr>
					<td><g:message code="user.im.label" default="Im" /></td>
					
						<td><g:fieldValue bean="${userInstance}" field="im"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${userInstance?.memo}">
				<tr>
					<td><g:message code="user.memo.label" default="Memo" /></td>
					
						<td><g:fieldValue bean="${userInstance}" field="memo"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${userInstance?.reserve1}">
				<tr>
					<td><g:message code="user.reserve1.label" default="Reserve1" /></td>
					
						<td><g:fieldValue bean="${userInstance}" field="reserve1"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${userInstance?.reserve2}">
				<tr>
					<td><g:message code="user.reserve2.label" default="Reserve2" /></td>
					
						<td><g:fieldValue bean="${userInstance}" field="reserve2"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${userInstance?.reserve3}">
				<tr>
					<td><g:message code="user.reserve3.label" default="Reserve3" /></td>
					
						<td><g:fieldValue bean="${userInstance}" field="reserve3"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${userInstance?.accountExpired}">
				<tr>
					<td><g:message code="user.accountExpired.label" default="Account Expired" /></td>
					
						<td><g:formatBoolean boolean="${userInstance?.accountExpired}" /></td>
					
				</tr>
				</g:if>
			
				<g:if test="${userInstance?.accountLocked}">
				<tr>
					<td><g:message code="user.accountLocked.label" default="Account Locked" /></td>
					
						<td><g:formatBoolean boolean="${userInstance?.accountLocked}" /></td>
					
				</tr>
				</g:if>
			
				<g:if test="${userInstance?.enabled}">
				<tr>
					<td><g:message code="user.enabled.label" default="Enabled" /></td>
					
						<td><g:formatBoolean boolean="${userInstance?.enabled}" /></td>
					
				</tr>
				</g:if>
			
				<g:if test="${userInstance?.passwordExpired}">
				<tr>
					<td><g:message code="user.passwordExpired.label" default="Password Expired" /></td>
					
						<td><g:formatBoolean boolean="${userInstance?.passwordExpired}" /></td>
					
				</tr>
				</g:if>
			
            </tbody>
			</table>
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
