<%-- Only show the "Pills" navigation menu if a controller exists (but not for home) --%>
<g:if test="${!layout_nonavbar && params.controller != null && params.controller != ''}">
    <g:set var="entityAdminName"
           value="${message(code: params.controller + '.admin.label')}"/>
    <g:set var="entityName"
           value="${message(code: params.controller + '.label')}"/>
    <div class="">
        <!-- BEGIN PAGE TITLE & BREADCRUMB-->
        <ul class="breadcrumb">
            <li>
                &nbsp;
                    <g:message code='default.current.label' />
                &nbsp;
                <g:if test="${params.controller != 'home'}">
                    <g:if test="${params.controller == 'area' || 
                        params.controller == 'organization' ||
                        params.controller == 'user' ||
                        params.controller == 'role'
                        }">
                        <g:message code='system.admin.label' />
                    </g:if>
                    &nbsp;
                    /
                    &nbsp;
                    <g:message code="${entityAdminName}" />
                    <g:if test="${params.action == 'create'}">
                        &nbsp;
                        /
                        &nbsp;
                        <g:message code="default.new.label" args='[entityName]' />
                    </g:if>
                    <g:elseif test="${params.action == 'show'}">
                        &nbsp;
                        /
                        &nbsp;
                        <g:message code="default.show.label" args='[entityName]' />
                    </g:elseif>
                    <g:elseif test="${params.action == 'edit'}">
                        &nbsp;
                        /
                        &nbsp;
                        <g:message code="default.edit.label" args='[entityName]' />
                    </g:elseif>
                </g:if>
            </li>
        </ul>
        <!-- END PAGE TITLE & BREADCRUMB-->
    </div>
</g:if>
