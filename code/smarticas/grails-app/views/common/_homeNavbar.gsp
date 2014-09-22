<%-- Only show the "Pills" navigation menu if a controller exists (but not for home) --%>
<g:if test="${!layout_nonavbar && params.controller != null && params.controller != ''}">
    <div class="">
        <!-- BEGIN PAGE TITLE & BREADCRUMB-->
        <ul class="breadcrumb">
            <li>
                &nbsp;
                <g:message code='default.current.label' />
                &nbsp;
                <g:message code='personal.admin.label' />
                &nbsp;
                /
                &nbsp;
                <g:if test="${params.action == 'showProfile'}">
                    <g:message code="user.profile.label" />
                </g:if>
                <g:if test="${params.action == 'changeProfile'}">
                    <g:message code="user.profile.label" />
                </g:if>
                <g:elseif test="${params.action == 'changePassword'}">
                    <g:message code="user.change.password.label" />
                </g:elseif>
                <g:elseif test="${params.action == 'changeEmail'}">
                    <g:message code="user.change.email.label" />
                </g:elseif>
            </li>
        </ul>
        <!-- END PAGE TITLE & BREADCRUMB-->
    </div>
</g:if>
