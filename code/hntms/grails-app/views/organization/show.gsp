
<%@ page import="com.xpi.settle.sys.Organization" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'organization.label', default: 'Organization')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-organization" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-organization" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list organization">
			
				<g:if test="${organizationInstance?.code}">
				<li class="fieldcontain">
					<span id="code-label" class="property-label"><g:message code="organization.code.label" default="Code" /></span>
					
						<span class="property-value" aria-labelledby="code-label"><g:fieldValue bean="${organizationInstance}" field="code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="organization.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${organizationInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="organization.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${organizationInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.leader}">
				<li class="fieldcontain">
					<span id="leader-label" class="property-label"><g:message code="organization.leader.label" default="Leader" /></span>
					
						<span class="property-value" aria-labelledby="leader-label"><g:fieldValue bean="${organizationInstance}" field="leader"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.contact}">
				<li class="fieldcontain">
					<span id="contact-label" class="property-label"><g:message code="organization.contact.label" default="Contact" /></span>
					
						<span class="property-value" aria-labelledby="contact-label"><g:fieldValue bean="${organizationInstance}" field="contact"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.memo}">
				<li class="fieldcontain">
					<span id="memo-label" class="property-label"><g:message code="organization.memo.label" default="Memo" /></span>
					
						<span class="property-value" aria-labelledby="memo-label"><g:fieldValue bean="${organizationInstance}" field="memo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.bank}">
				<li class="fieldcontain">
					<span id="bank-label" class="property-label"><g:message code="organization.bank.label" default="Bank" /></span>
					
						<span class="property-value" aria-labelledby="bank-label"><g:fieldValue bean="${organizationInstance}" field="bank"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="organization.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${organizationInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.dateUpdated}">
				<li class="fieldcontain">
					<span id="dateUpdated-label" class="property-label"><g:message code="organization.dateUpdated.label" default="Date Updated" /></span>
					
						<span class="property-value" aria-labelledby="dateUpdated-label"><g:formatDate date="${organizationInstance?.dateUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.reserve1}">
				<li class="fieldcontain">
					<span id="reserve1-label" class="property-label"><g:message code="organization.reserve1.label" default="Reserve1" /></span>
					
						<span class="property-value" aria-labelledby="reserve1-label"><g:fieldValue bean="${organizationInstance}" field="reserve1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.reserve2}">
				<li class="fieldcontain">
					<span id="reserve2-label" class="property-label"><g:message code="organization.reserve2.label" default="Reserve2" /></span>
					
						<span class="property-value" aria-labelledby="reserve2-label"><g:fieldValue bean="${organizationInstance}" field="reserve2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.reserve3}">
				<li class="fieldcontain">
					<span id="reserve3-label" class="property-label"><g:message code="organization.reserve3.label" default="Reserve3" /></span>
					
						<span class="property-value" aria-labelledby="reserve3-label"><g:fieldValue bean="${organizationInstance}" field="reserve3"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.level}">
				<li class="fieldcontain">
					<span id="level-label" class="property-label"><g:message code="organization.level.label" default="Level" /></span>
					
						<span class="property-value" aria-labelledby="level-label"><g:fieldValue bean="${organizationInstance}" field="level"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.area}">
				<li class="fieldcontain">
					<span id="area-label" class="property-label"><g:message code="organization.area.label" default="Area" /></span>
					
						<span class="property-value" aria-labelledby="area-label"><g:link controller="area" action="show" id="${organizationInstance?.area?.id}">${organizationInstance?.area?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.children}">
				<li class="fieldcontain">
					<span id="children-label" class="property-label"><g:message code="organization.children.label" default="Children" /></span>
					
						<g:each in="${organizationInstance.children}" var="c">
						<span class="property-value" aria-labelledby="children-label"><g:link controller="organization" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.parent}">
				<li class="fieldcontain">
					<span id="parent-label" class="property-label"><g:message code="organization.parent.label" default="Parent" /></span>
					
						<span class="property-value" aria-labelledby="parent-label"><g:link controller="organization" action="show" id="${organizationInstance?.parent?.id}">${organizationInstance?.parent?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.users}">
				<li class="fieldcontain">
					<span id="users-label" class="property-label"><g:message code="organization.users.label" default="Users" /></span>
					
						<g:each in="${organizationInstance.users}" var="u">
						<span class="property-value" aria-labelledby="users-label"><g:link controller="user" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:organizationInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${organizationInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
