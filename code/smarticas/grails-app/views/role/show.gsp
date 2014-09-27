
<%@ page import="com.xpi.settle.sys.Role" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'role.label', default: 'Role')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="show-role" class="top10 content scaffold-show" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered">
			<tbody>
				<tr>
					<td><g:message code="role.authority.label" /></td>
					
                    <td><g:fieldValue bean="${roleInstance}" field="name"/></td>
				</tr>
			</tbody>
			</table>
            <!--
			<g:form url="[resource:roleInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${roleInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            -->
		</div>
        <div class='col-xs-2 col-xs-offset-5'>
            <g:link action='index'>
                <input type='button' class='btn btn-primary' 
                    value="${message(code: 'return.label')}" />   
            </g:link>
        </div>
	</body>
</html>
