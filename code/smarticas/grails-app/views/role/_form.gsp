<%@ page import="com.xpi.settle.sys.Role" %>

<div>
    <table class="table table-bordered text-right">
        <tr>
            <td>

<div class="form-group required">
	<label class='control-label col-xs-2' for="authority">
		<g:message code="role.authority.label" default="Authority" />
	</label>
    <div class='col-xs-4'>
	<g:textField class='form-control' name="name" required=""
        value="${roleInstance?.name}"/>
    </div>

</div>

            </td></tr>
    </table>
</div>
