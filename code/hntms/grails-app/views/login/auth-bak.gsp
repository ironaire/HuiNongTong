<html>
<head>
    <title><g:message code="springSecurity.login.title"/></title>
    <meta name="layout" content="main"/>
    <g:set var='layout_nomainmenu' value="${true}" scope='request' />
    <g:set var='layout_nosecondarymenu' value="${true}" 
        scope='request' />
</head>
<body>
<section id="login" class="first">
	<div class="row" style="background-color: dodgerblue">
		<div class="col-md-5">
            <img src="/tongbaoyi/images/main-pic.png" width="300" height="293">
		</div>
        <div class="col-md-1">&nbsp;</div>
		<div class="col-md-5"  bgcolor="#3157A4">
            <form role="form" id='loginForm' class='form-horizontal' action='${postUrl}'
	                method='POST' autocomplete='off'>

	            <div class="form-group">
	                <label for="username" class="col-sm-2 control-label">
	                    <g:message code="user.username.label" default="Username"/>
	                </label>
	
	                <div class="col-sm-8">
	                    <g:field type="input" class="form-control" name="j_username" id="username" placeholder="Username" value="${userInstance?.username}" required="true"/>
	                </div>
	            </div>
	
	            <div class="form-group">
	                <label for="password" class="col-sm-2 control-label">
	                    <g:message code="user.password.label" default="Password"/>
	                </label>
	
	                <div class="col-sm-8">
	                    <g:field type="password" class="form-control" name="j_password" id="password" placeholder="Password" required="true"/>
	                </div>
	            </div>

	            <div class="form-group">
	                <div class="col-sm-offset-2 col-sm-10">
	                    <div class="checkbox">
	                        <label>
	                            <g:checkBox name="${rememberMeParameter}" value="${hasCookie}"/> <g:message
	                                    code="user.rememberMe.label" default="Remember Me"/>
	                        </label>
	                    </div>
	                </div>
	            </div>

	            <div class="form-group">
	                <div class="col-sm-12">
	                    <input type="submit" id="submit" class="btn btn-primary col-sm-8 col-sm-offset-2"
	                           value='${message(code: "login.button.label")}'/>
	                </div>
	            </div>
	            <div class="form-group">
	            <div class="col-sm-12">
	<!--                <g:link action="newAccount" class="col-sm-8 col-sm-offset-3"><g:message code="${message(code: 'new.account.button.label')}"/></g:link>
	-->
	                <button type="button"
	                onclick="location.href='${createLink(action:
	                'newAccount')}'" class="btn btn-primary col-sm-8 col-sm-offset-2"><g:message code="${message(code: 'register.button.label')}"/></button>
	            </div>
	            </div>
	        </form>
            <div class="row" class="container-fluid">
                <g:if test="${flash.message}">
                    <div class="alert alert-info alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        ${flash.message}
                    </div>
                </g:if>
                <g:hasErrors bean="${userInstance}">
                    <ul class="errors" role="alert">
                        <g:eachError bean="${userInstance}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                    error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </g:hasErrors>
            </div>
	    </div>
    </div>
</section>

<script type='text/javascript'>
    <!--
    (function () {
        document.forms['loginForm'].elements['j_username'].focus();
    })();
    // -->
</script>
</body>
</html>
