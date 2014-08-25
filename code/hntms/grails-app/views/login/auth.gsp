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
	<div class="row">
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
		
	<div class="row">
		<div class="col-md-6">
			  <h3>HNTMS: Tagline here</h3>
			  <p>
				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sem elit, ullamcorper sit amet sem eu, dignissim posuere nunc. Sed id urna id ligula elementum fringilla eget ac est. Curabitur eget neque vitae nisi ultricies pellentesque in lacinia mauris. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec vel venenatis velit, vitae semper quam. Vivamus tellus ligula, tristique ut maximus ac, fringilla eu ipsum. Donec felis tellus, finibus eu nunc sed, mollis gravida arcu. Donec molestie diam metus, sit amet pulvinar elit efficitur quis. Quisque egestas massa arcu, eget volutpat augue lobortis non. Vivamus quis pharetra odio. Vivamus tristique placerat risus, non vulputate arcu fringilla eu. Nulla facilisi. Suspendisse interdum efficitur sem, id efficitur quam iaculis ut. Ut molestie lacus urna, nec tempor enim convallis ac. Integer lacus diam, pretium at tempus ultricies, sollicitudin vel nisi. Maecenas condimentum maximus venenatis.
			  </p>
		</div>
        <div class="col-md-1">&nbsp;</div>
		<div class="col-md-5">
	        <form role="form" id='loginForm' class='form-horizontal' action='${postUrl}'
	                method='POST' autocomplete='off'>
	            <div class="form-group">
	                <h3><g:message code="springSecurity.login.header"/></h3>
	            </div>
	
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
