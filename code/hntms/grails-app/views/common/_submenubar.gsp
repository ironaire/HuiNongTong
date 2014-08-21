<!--
This menu is used to show function that can be triggered on the content (an object or list of objects).
-->

<%-- Only show the "Pills" navigation menu if a controller exists (but not for home) --%>
<g:if
        test="${!layout_nosecondarymenu && params.controller != null && params.controller != '' && params.controller !=
                'home'}">
    <ul class="nav nav-pills">

        <g:set var="entityName"
               value="${message(code: params.controller + '.label')}"/>

        <li class="${params.action == "list" ? 'active' : ''}">
            <g:link action="index"><i class="glyphicon glyphicon-th-list"></i> <g:message code="default.list.label"
                                                                                         args="[entityName]"/></g:link>
        </li>
        <li class="${params.action == "create" ? 'active' : ''}">
            <g:link action="create"><i class="glyphicon glyphicon-plus"></i> <g:message code="default.new.label"
                                                                                        args="[entityName]"/></g:link>
        </li>

        <g:if test="${params.action == 'show' || params.action == 'edit'}">
            <!-- the item is an object (not a list) -->
            <li class="${params.action == "edit" ? 'active' : ''}">
                <g:link action="edit" id="${params.id}"><i class="glyphicon glyphicon-pencil"></i> <g:message
                        code="default.edit.label" args="[entityName]"/></g:link>
            </li>
            <sec:ifAnyGranted roles="ROLE_ADMIN">
                <li class="">
                    <g:render template="/common/modal/deleteTextLink"/>
                </li>
                <li>
                    <g:if test="${secondarymenu_unarchive}">
                        <g:link action="unarchive" id="${params.id}">
                            <i class="glyphicon glyphicon-file"></i>
                            <g:message code="default.unarchive.label"/>
                        </g:link>
                    </g:if>
                    <g:else>
                        <g:link action="archive" id="${params.id}">
                            <i class="glyphicon glyphicon-film"></i>
                            <g:message code="default.archive.label"/>
                        </g:link>
                    </g:else>
                </li>
            </sec:ifAnyGranted>
        </g:if>
        <sec:ifAnyGranted roles="ROLE_ADMIN">
            <li class="${params.action == "listArchive" ? 'active' : ''}">
                <g:link action="listArchive"><i class="glyphicon glyphicon-th-list"></i> <g:message
                        code="default.list.archive.label"/></g:link>
            </li>
        </sec:ifAnyGranted>
    </ul>
</g:if>
