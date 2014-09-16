
<%@ page import="com.xpi.settle.sys.Area" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'area.label', default: 'Area')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="show-area" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered">
			    <tbody>
				<g:if test="${areaInstance?.code}">
				<tr>
					<td><g:message code="area.code.label" default="Code" /></td>
					
						<td><g:fieldValue bean="${areaInstance}" field="code"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${areaInstance?.name}">
				<tr>
					<td><g:message code="area.name.label" default="Name" /></td>
					
						<td><g:fieldValue bean="${areaInstance}" field="name"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${areaInstance?.spell}">
				<tr>
					<td><g:message code="area.spell.label" default="Spell" /></td>
					
						<td><g:fieldValue bean="${areaInstance}" field="spell"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${areaInstance?.level}">
				<tr>
					<td><g:message code="area.level.label" default="Level" /></td>
					
						<td><g:fieldValue bean="${areaInstance}" field="level"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${areaInstance?.reserve1}">
				<tr>
					<td><g:message code="area.reserve1.label" default="Reserve1" /></td>
					
						<td><g:fieldValue bean="${areaInstance}" field="reserve1"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${areaInstance?.reserve2}">
				<tr>
					<td><g:message code="area.reserve2.label" default="Reserve2" /></td>
					
						<td><g:fieldValue bean="${areaInstance}" field="reserve2"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${areaInstance?.reserve3}">
				<tr>
					<td><g:message code="area.reserve3.label" default="Reserve3" /></td>
					
						<td><g:fieldValue bean="${areaInstance}" field="reserve3"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${areaInstance?.parent}">
				<tr>
					<td><g:message code="area.parent.label" default="Parent" /></td>
					
						<td>
                            <g:link controller='area' action='show'
                                id="${areaInstance?.parent?.name}">
                                ${areaInstance?.parent?.encodeAsHTML()}
                            </g:link>
                        </td>
					
				</tr>
				</g:if>
			
				<g:if test="${areaInstance?.children}">
				<tr>
					<td><g:message code="area.children.label" default="Children" /></td>
					
						<g:each in="${areaInstance.children}" var="c">
						<td><g:link controller='area' action='show'
                        id="${c?.id}">
                            ${c?.encodeAsHTML()}
                            </g:link></td>
						</g:each>
					
				</tr>
				</g:if>
			
				<g:if test="${areaInstance?.organizations}">
				<tr>
					<td><g:message code="area.organizations.label" default="Organizations" /></td>
					
						<g:each in="${areaInstance.organizations}" var="o">
						<td><g:link controller='organization' action='show'
                            id="${o?.id}">
                        ${o?.encodeAsHTML()}
                        </g:link></td>
						</g:each>
					
				</tr>
				</g:if>
			
                </tbody>
			</table>
            <!--
			<g:form url="[resource:areaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
                    <g:link class="edit" action="edit"
                    resource="${areaInstance}"><g:message
                    code="default.button.edit.label"
                    default="Edit" /></g:link>
                    <g:actionSubmit class="delete" action="delete"
                    value="${message(code: 'default.button.delete.label',
                        default: 'Delete')}" onclick="return confirm(
                            '${message(code: 'default.button.delete.confirm.message', 
                            default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            -->
		</div>
	</body>
</html>
