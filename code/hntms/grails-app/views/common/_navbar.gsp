<%-- Only show the "Pills" navigation menu if a controller exists (but not for home) --%>
<g:if test="${!layout_nonavbar && params.controller != null && params.controller != ''}">
    <g:set var="entityAdminName"
           value="${message(code: params.controller + '.admin.label')}"/>
    <g:set var="entityName"
           value="${message(code: params.controller + '.label')}"/>
    <div class=''>
        <!-- BEGIN PAGE TITLE & BREADCRUMB-->
        <ul class="breadcrumb">
            <li>
                &nbsp;
                <i class="glyphicon glyphicon-home"></i>
                &nbsp;
                <a href="${createLink(controller: 'home', action: 'index')}">
                    <g:message code='default.home.label' />
                </a>
                <g:if test="${params.controller != 'home'}">
                    &nbsp;
                    <i class="glyphicon glyphicon-chevron-right"></i>
                    &nbsp;
                    <a href="${createLink(controller: params.controller, action: 'index')}">
                        <g:message code="${entityAdminName}" />
                    </a>
                    <g:if test="${params.action == 'create'}">
                        &nbsp;
                        <i class="glyphicon glyphicon-chevron-right"></i>
                        &nbsp;
                        <a href='#'>
                        <g:message code="default.new.label" 
                            args='[entityName]' />
                        </a>
                    </g:if>
                    <g:elseif test="${params.action == 'show'}">
                        &nbsp;
                        <i class="glyphicon glyphicon-chevron-right"></i>
                        &nbsp;
                        <a href='#'>
                        <g:message code="default.show.label" 
                            args='[entityName]' />
                        </a>
                    </g:elseif>
                    <g:elseif test="${params.action == 'edit'}">
                        &nbsp;
                        <i class="glyphicon glyphicon-chevron-right"></i>
                        &nbsp;
                        <a href='#'>
                        <g:message code="default.edit.label" 
                            args='[entityName]' />
                        </a>
                    </g:elseif>
                </g:if>
            </li>
        </ul>
        <!-- END PAGE TITLE & BREADCRUMB-->
    </div>
</g:if>
