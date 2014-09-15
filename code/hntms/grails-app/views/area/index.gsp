
<%@ page import="com.xpi.settle.sys.Area" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
        <r:require modules='areaList' />
		<g:set var="entityName" value="${message(code: 'area.label', default: 'Area')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
    <div class='container col-md-12'>
        <!-- BEGIN PAGE TITLE & BREADCRUMB-->
        <ul class="breadcrumb">
            <li>
                &nbsp;
                <i class="glyphicon glyphicon-home"></i>
                &nbsp;
                <a href="index.gsp">Home</a>
                &nbsp;
                <i class="glyphicon glyphicon-chevron-right"></i>
                &nbsp;
                <a href="index.gsp">SubMenu~~~~</a>
            </li>
        </ul>
        <!-- END PAGE TITLE & BREADCRUMB-->
    </div>

		<div class="container col-md-12 table-bordered top10" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
            <table class='display' id='table'>
                <thead class="bg-info">
                    <th><g:message code='id.label' /></th>
                    <th><g:message code='area.code.label' /></th>
                    <th><g:message code='area.name.label' /></th>
                    <th><g:message code='area.spell.label' /></th>
                    <th><g:message code='area.level.label' /></th>
                </thead>
                <tbody></tbody>
                <tfoot>
                    <th><g:message code='id.label' /></th>
                    <th><g:message code='area.code.label' /></th>
                    <th><g:message code='area.name.label' /></th>
                    <th><g:message code='area.spell.label' /></th>
                    <th><g:message code='area.level.label' /></th>
                </tfoot>
            </table>
		</div>
        <g:javascript>
            var showLink = "${createLink(
                                controller: 'area',
                                action: 'show')}";
            var areasTableLink = "${createLink(
                                    controller: 'area',
                                    action: 'getAreasTable')}";

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
