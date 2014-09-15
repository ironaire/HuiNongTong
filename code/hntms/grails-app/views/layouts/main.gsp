<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Hui Nong Tong"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <g:layoutHead/>

    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}"/>
    <r:require modules="bootstrap, custom"/>

    <r:layoutResources/>
</head>

<body>
<div id="main" class="container">
    <g:render template="/common/menubar"/>
    <g:render template="/common/navbar"/>
    <g:render template="/common/submenubar"/>
    <g:layoutBody/>
    <g:render template="/common/footer"/>
</div>

<!-- All Javascript at the bottom of the page for faster page loading -->

<r:layoutResources/>
</body>
</html>
