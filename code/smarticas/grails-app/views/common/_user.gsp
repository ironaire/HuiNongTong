<li class="dropdown">

    <sec:ifLoggedIn>
    <%----%>
        <a class="dropdown-toggle" role="button" data-toggle="dropdown" data-target="#" href="#">
            <!-- TODO: Only show menu items based on permissions (e.g., Guest has no account page) -->
            <i class="glyphicon glyphicon-user"></i>
            <sec:loggedInUserInfo field="username"/><b class="caret"></b>
        </a>
        <ul class="dropdown-menu" role="menu">
            <!-- TODO: Only show menu items based on permissions -->
            <li class=""><g:link controller="home" action="showProfile">
                <i class="glyphicon glyphicon-user"></i>
                <g:message code="user.profile.label"/>
            </g:link></li>
            <li class=""><g:link controller="home" action="changePassword">
                <i class="glyphicon glyphicon-lock"></i>
                <g:message code="user.change.password.label"/>
            </g:link></li>
            <li class=""><g:link controller="home" action="changeEmail">
                <i class="glyphicon glyphicon-comment"></i>
                <g:message code="user.change.email.label"/>
            </g:link></li>
            <li class="divider"></li>
            <li class=""><g:link controller="logout">
                <i class="glyphicon glyphicon-off"></i>
                <g:message code="user.logout.label"/>
            </g:link>
            </li>
        </ul>
    <%----%>
    </sec:ifLoggedIn>

</li>
