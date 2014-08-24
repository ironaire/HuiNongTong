
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
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered">
			    <tbody>
				<g:if test="${organizationInstance?.code}">
				<tr>
					<td><g:message code="organization.code.label" default="Code" /></td>
					
						<td><g:fieldValue bean="${organizationInstance}" field="code"/></td>
					
				<tr>
				</g:if>
			
				<g:if test="${organizationInstance?.name}">
				<tr>
					<td><g:message code="organization.leader.label" default="Leader" /></td>
					
						<td><g:fieldValue bean="${organizationInstance}" field="leader"/></td>
					
				<tr>
				</g:if>
			
				<g:if test="${organizationInstance?.contact}">
				<tr>
					<td><g:message code="organization.contact.label" default="Contact" /></td>
					
						<td><g:fieldValue bean="${organizationInstance}" field="contact"/></td>
					
				<tr>
				</g:if>
			
				<g:if test="${organizationInstance?.memo}">
				<tr>
					<td><g:message code="organization.memo.label" default="Memo" /></td>
					
						<td><g:fieldValue bean="${organizationInstance}" field="memo"/></td>
					
				<tr>
				</g:if>
			
				<g:if test="${organizationInstance?.bank}">
				<tr>
					<td><g:message code="organization.bank.label" default="Bank" /></td>
					
						<td><g:fieldValue bean="${organizationInstance}" field="bank"/></td>
					
				<tr>
				</g:if>
			
				<g:if test="${organizationInstance?.dateCreated}">
				<tr>
					<td><g:message code="organization.dateCreated.label" default="Date Created" /></td>
					
						<td><g:formatDate date="${organizationInstance?.dateCreated}" /></td>
					
				<tr>
				</g:if>
			
				<g:if test="${organizationInstance?.dateUpdated}">
				<tr>
					<td><g:message code="organization.dateUpdated.label" default="Date Updated" /></td>
					
						<td><g:formatDate date="${organizationInstance?.dateUpdated}" /></td>
					
				<tr>
				</g:if>
			
				<g:if test="${organizationInstance?.reserve1}">
				<tr>
					<td><g:message code="organization.reserve1.label" default="Reserve1" /></td>
					
						<td><g:fieldValue bean="${organizationInstance}" field="reserve1"/></td>
					
				<tr>
				</g:if>
			
				<g:if test="${organizationInstance?.reserve2}">
				<tr>
					<td><g:message code="organization.reserve2.label" default="Reserve2" /></td>
					
						<td><g:fieldValue bean="${organizationInstance}" field="reserve2"/></td>
					
				<tr>
				</g:if>
			
				<g:if test="${organizationInstance?.reserve3}">
				<tr>
					<td><g:message code="organization.reserve3.label" default="Reserve3" /></td>
					
						<td><g:fieldValue bean="${organizationInstance}" field="reserve3"/></td>
					
				<tr>
				</g:if>
			
				<g:if test="${organizationInstance?.level}">
				<tr>
					<td><g:message code="organization.level.label" default="Level" /></td>
					
						<td><g:fieldValue bean="${organizationInstance}" field="level"/></td>
					
				<tr>
				</g:if>
			
				<g:if test="${organizationInstance?.area}">
				<tr>
					<td><g:message code="organization.area.label" default="Area" /></td>
					
						<td><g:link controller="area" action="show" id="${organizationInstance?.area?.id}">${organizationInstance?.area?.encodeAsHTML()}</g:link></td>
					
				<tr>
				</g:if>
			
				<g:if test="${organizationInstance?.children}">
				<tr>
					<td><g:message code="organization.children.label" default="Children" /></td>
					
						<g:each in="${organizationInstance.children}" var="c">
						<td><g:link controller="organization" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></td>
						</g:each>
					
				<tr>
				</g:if>
			
				<g:if test="${organizationInstance?.parent}">
				<tr>
					<td><g:message code="organization.parent.label" default="Parent" /></td>
					
						<td><g:link controller="organization" action="show" id="${organizationInstance?.parent?.id}">${organizationInstance?.parent?.encodeAsHTML()}</g:link></td>
					
				<tr>
				</g:if>
			
				<g:if test="${organizationInstance?.users}">
				<tr>
					<td><g:message code="organization.users.label" default="Users" /></td>
					
						<g:each in="${organizationInstance.users}" var="u">
						<td><g:link controller="user" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></td>
						</g:each>
					
				<tr>
				</g:if>
			</tbody>
			</table>
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
