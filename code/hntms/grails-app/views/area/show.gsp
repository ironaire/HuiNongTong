
<%@ page import="com.xpi.settle.sys.Area" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'area.label', default: 'Area')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-area" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-area" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list area">
			
				<g:if test="${areaInstance?.code}">
				<li class="fieldcontain">
					<span id="code-label" class="property-label"><g:message code="area.code.label" default="Code" /></span>
					
						<span class="property-value" aria-labelledby="code-label"><g:fieldValue bean="${areaInstance}" field="code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${areaInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="area.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${areaInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${areaInstance?.spell}">
				<li class="fieldcontain">
					<span id="spell-label" class="property-label"><g:message code="area.spell.label" default="Spell" /></span>
					
						<span class="property-value" aria-labelledby="spell-label"><g:fieldValue bean="${areaInstance}" field="spell"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${areaInstance?.level}">
				<li class="fieldcontain">
					<span id="level-label" class="property-label"><g:message code="area.level.label" default="Level" /></span>
					
						<span class="property-value" aria-labelledby="level-label"><g:fieldValue bean="${areaInstance}" field="level"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${areaInstance?.reserve1}">
				<li class="fieldcontain">
					<span id="reserve1-label" class="property-label"><g:message code="area.reserve1.label" default="Reserve1" /></span>
					
						<span class="property-value" aria-labelledby="reserve1-label"><g:fieldValue bean="${areaInstance}" field="reserve1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${areaInstance?.reserve2}">
				<li class="fieldcontain">
					<span id="reserve2-label" class="property-label"><g:message code="area.reserve2.label" default="Reserve2" /></span>
					
						<span class="property-value" aria-labelledby="reserve2-label"><g:fieldValue bean="${areaInstance}" field="reserve2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${areaInstance?.reserve3}">
				<li class="fieldcontain">
					<span id="reserve3-label" class="property-label"><g:message code="area.reserve3.label" default="Reserve3" /></span>
					
						<span class="property-value" aria-labelledby="reserve3-label"><g:fieldValue bean="${areaInstance}" field="reserve3"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${areaInstance?.parent}">
				<li class="fieldcontain">
					<span id="parent-label" class="property-label"><g:message code="area.parent.label" default="Parent" /></span>
					
						<span class="property-value" aria-labelledby="parent-label"><g:link controller="area" action="show" id="${areaInstance?.parent?.id}">${areaInstance?.parent?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${areaInstance?.children}">
				<li class="fieldcontain">
					<span id="children-label" class="property-label"><g:message code="area.children.label" default="Children" /></span>
					
						<g:each in="${areaInstance.children}" var="c">
						<span class="property-value" aria-labelledby="children-label"><g:link controller="area" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${areaInstance?.organizations}">
				<li class="fieldcontain">
					<span id="organizations-label" class="property-label"><g:message code="area.organizations.label" default="Organizations" /></span>
					
						<g:each in="${areaInstance.organizations}" var="o">
						<span class="property-value" aria-labelledby="organizations-label"><g:link controller="organization" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:areaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${areaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
