
<%@ page import="com.xpi.settle.sys.Organization" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'organization.label', default: 'Organization')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-organization" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-organization" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="code" title="${message(code: 'organization.code.label', default: 'Code')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'organization.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'organization.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="leader" title="${message(code: 'organization.leader.label', default: 'Leader')}" />
					
						<g:sortableColumn property="contact" title="${message(code: 'organization.contact.label', default: 'Contact')}" />
					
						<g:sortableColumn property="memo" title="${message(code: 'organization.memo.label', default: 'Memo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${organizationInstanceList}" status="i" var="organizationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${organizationInstance.id}">${fieldValue(bean: organizationInstance, field: "code")}</g:link></td>
					
						<td>${fieldValue(bean: organizationInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: organizationInstance, field: "address")}</td>
					
						<td>${fieldValue(bean: organizationInstance, field: "leader")}</td>
					
						<td>${fieldValue(bean: organizationInstance, field: "contact")}</td>
					
						<td>${fieldValue(bean: organizationInstance, field: "memo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${organizationInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
