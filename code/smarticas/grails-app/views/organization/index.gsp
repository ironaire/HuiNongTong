
<%@ page import="com.xpi.settle.sys.Organization" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
        <r:require modules='orgList' />
		<g:set var="entityName" value="${message(code: 'organization.label', default: 'Organization')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="top10 container-fluid table-bordered" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class='display' id='table'>
                <thead>
                    <th><g:message code='id.label' /></th>
                    <th><g:message code='organization.code.label' /></th>
                    <th><g:message code='organization.name.label' /></th>
                    <th><g:message code='organization.address.label' /></th>
                    <th><g:message code='organization.leader.label' /></th>
                    <th><g:message code='organization.contact.label' /></th>
                    <th><g:message code='organization.bank.label' /></th>
                    <th><g:message code='organization.level.label' /></th>
                    <th><g:message code='area.label' /></th>
                    <th><g:message code='operation.label' /></th>
				</thead>
				<tbody>
				</tbody>
			</table>
		</div>
        <g:javascript>
            var showLink = "${createLink(
                                controller: 'organization',
                                action: 'show')}";
            var editLink = "${createLink(
                                controller: 'organization',
                                action: 'edit')}";
            var editLabel = "${message(code: 'edit.label')}";
            var organizationsTableLink = "${createLink(
                                    controller: 'organization',
                                    action: 'getOrganizationsTable')}";

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
