<g:if test="${!layout_navbar}">
    <div class="container col-md-12 top-style">
        <div class="col-md-2" >
            <g:img dir='custom/images' file="tongbaoyi-logo.png" width="180" height="80"/>
        </div>
        <div class="col-md-10">&nbsp;<h2>跨境收单清算管理平台</h2>
        </div>
    </div>
    <!-- navbar -->
    <div class="nav nav-tabs" role="navigation">
        <div class="container col-md-12">
            <button class="navbar-toggle" data-target=".navbar-responsive-collapse" data-toggle="collapse" type="button">
                <span class="icon-bar">111</span>
                <span class="icon-bar">111</span>
                <span class="icon-bar">111</span>
            </button> <!-- end collapse buttons -->
           <g:if test="${!layout_nomainmenu}">
                <div class="navbar-collapse collapse navbar-responsive-collapse">
                    <ul class="nav navbar-nav">
                        <!-- Moved Home to brand -->
                        <li>
                            <a class="navbar-brand"
                               href="${createLink(controller: 'home', action: 'index')}">
                                <g:message code="app.name"/>
                            </a>
                        </li>
                        <li>
                            <a href="${createLink(controller: 'area')}">
                                <g:message code="area.label"/>
                            </a>
                        </li>
                        <li>
                            <a href="${createLink(controller: 'organization')}">
                                <g:message code="organization.label"/>
                            </a>
                        </li>
                    <sec:ifAnyGranted roles="ROLE_ADMIN">
                        <li>
                            <a href="${createLink(controller: 'user')}">
                                <g:message code="user.label"/>
                            </a>
                        </li>
                        <li>
                            <a href="${createLink(controller: 'role')}">
                                <g:message code="role.label"/>
                            </a>
                        </li>

                            <li>
                            </li>
                            <li>
                            </li>
                            <!--
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><g:message
                                        code="administration.label"/>
                                    <strong class="caret"></strong>
                                </a>
                                <ul class="dropdown-menu">
                                </ul>
                            </li>
                            -->
                        </sec:ifAnyGranted>
                    </ul> <!-- end navbar-nav -->
                <!-- account profile -->
                    <ul class="nav navbar-nav pull-right">
                        <g:render template="/common/user"/>
                    </ul>
                </div> <!-- end navbar-collapse -->
           </g:if>
        </div> <!-- end container-fluid -->
    </div> <!-- end navbar -->
</g:if>
