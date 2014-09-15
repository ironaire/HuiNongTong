<%@ page import="com.xpi.settle.sys.Role" %>



<div class="form-group required">
	<label class='control-label col-xs-2' for="authority">
		<g:message code="role.authority.label" default="Authority" />
	</label>
    <div class='col-xs-4'>
	<g:textField class='form-control' name="authority" required="" value="${roleInstance?.authority}"/>
    </div>

</div>

