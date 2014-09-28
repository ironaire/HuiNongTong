
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
			<div class="message text-danger text-center" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered">
			    <tbody>
				<tr>
					<td width="25%"><g:message code="area.code.label" default="Code" /></td>
					
						<td><g:fieldValue bean="${areaInstance}" field="code"/></td>
					
				</tr>
			
				<tr>
					<td><g:message code="area.name.label" default="Name" /></td>
					
						<td><g:fieldValue bean="${areaInstance}" field="name"/></td>
					
				</tr>
			
				<tr>
					<td><g:message code="area.spell.label" default="Spell" /></td>
					
						<td><g:fieldValue bean="${areaInstance}" field="spell"/></td>
					
				</tr>

				<tr>
					<td><g:message code="area.level.label" default="Level" /></td>
					
						<td><g:fieldValue bean="${areaInstance}" field="level"/></td>
					
				</tr>
			
				<tr>
					<td><g:message code="area.parent.label" default="Parent" /></td>
					
						<td>
                            <g:if test="${areaInstance?.parent}">
                                <g:link controller='area' action='show'
                                    id="${areaInstance?.parent?.name}">
                                    ${areaInstance?.parent?.encodeAsHTML()}
                                </g:link>
                            </g:if>
                            <g:else><g:message code="select.no.label" />
                            </g:else>
                    </td>
                </tr>

				<tr>
					<td><g:message code="area.children.label" default="Children" /></td>
                <td>
                <g:if test="${areaInstance?.children}">
                    <g:each in="${areaInstance.children}" var="c">
						<g:link controller='area' action='show'
                        id="${c?.id}">
                            ${c?.encodeAsHTML()}
                            </g:link>
						</g:each>
                </g:if>
                <g:else><g:message code="select.no.label" />
                </g:else>
                </td>
				</tr>

				<tr>
					<td><g:message code="area.organizations.label" default="Organizations" /></td>
                    <td>
                        <g:if test="${areaInstance?.organizations}">
						<g:each in="${areaInstance.organizations}" var="o">
                            <g:link controller='organization' action='show'
                            id="${o?.id}">
                        ${o?.encodeAsHTML()}
                        </g:link>
						</g:each>
                        </g:if>
                        <g:else><g:message code="select.no.label" />
                        </g:else>
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
