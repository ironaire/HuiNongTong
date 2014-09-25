
<%@ page import="com.xpi.settle.sys.Role" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
        <r:require modules='roleList' />
		<g:set var="entityName" value="${message(code: 'role.label', default: 'Role')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="top10 container-fluid table-bordered">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class='display' id='table'>
                <thead>
                    <th><g:message code='id.label' /></th>
                    <th><g:message code='role.authority.label' /></th>
                    <th><g:message code='operation.label' /></th>
				</thead>
				<tbody>
				</tbody>
			</table>
		</div>
        <g:javascript>
            var showLink = "${createLink(
                                controller: 'role',
                                action: 'show')}";
            var editLink = "${createLink(
                                controller: 'role',
                                action: 'edit')}";
            var editLabel = "${message(code: 'edit.label')}";
            var rolesTableLink = "${createLink(
                                    controller: 'role',
                                    action: 'getRolesTable')}";

            // define object for DataTable lauguage
            var dataTableLanguage = {
                "emptyTable": '<g:message code="dataTable.emptyTable"/>',
                "info": '<g:message code="dataTable.info"/>',
                "infoEmpty": '<g:message code="dataTable.infoEmpty"/>',
                "infoFiltered": '<g:message code="dataTable.infoFiltered"/>',
                "infoPostFix": '<g:message code="dataTable.infoPostFix"/>',
                "thousands": '<g:message code="dataTable.thousands"/>',
                "lengthMenu": '<g:message code="dataTable.lengthMenu"/>',
                "loadingRecords": '<g:message code="dataTable.loadingRecords"/>',
                "processing": '<g:message code="dataTable.processing"/>',
                "search": '<g:message code="dataTable.search"/>',
                "zeroRecords": '<g:message code="dataTable.zeroRecords"/>',
                "paginate": {
                    "first": '<g:message code="dataTable.paginate.first"/>',
                    "last": '<g:message code="dataTable.paginate.last"/>',
                    "next": '<g:message code="dataTable.paginate.next"/>',
                    "previous": '<g:message code="dataTable.paginate.previous"/>'
                },
                "aria": {
                    "sortAscending": 
                        '<g:message code="dataTable.aria.sortAscending"/>',
                    "sortDescending": 
                        '<g:message code="dataTable.aria.sortDescending"/>'
                }
            };
        </g:javascript>
	</body>
</html>
