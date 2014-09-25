<%@ page import="com.xpi.settle.sys.Area" %>

<div>
    <table class="table table-bordered text-right">
            <tr><td>
                <div class='form-group required'>
                    <label class='control-label col-xs-2' for="code">
                        <g:message code="area.code.label" default="Code" />
                    </label>
                <div class='col-xs-4'>
                    <g:textField class='form-control' name="code" maxlength="32" required="" value="${areaInstance?.code}"/>
                </div>
                </div>
            </td></tr>

            <tr><td>
                <div class='form-group required'>
                    <label class='control-label col-xs-2' for="name">
                        <g:message code="area.name.label" default="Name" />
                    </label>
                <div class='col-xs-4'>
                    <g:textField class='form-control' name="name" maxlength="32" required="" value="${areaInstance?.name}"/>

                </div>
                </div>
            </td></tr>

        <tr><td>
            <div class='form-group required'>
	            <label class='control-label col-xs-2' for="level">
		            <g:message code="area.level.label" default="Level" />
                </label>
                <div class='col-xs-4'>
                    <g:field class='form-control' name="level" type="number" min="0" required="" value="${areaInstance.level}"/>
                </div>
            </div>
        </td></tr>

        <tr><td>
        <div class='form-group'>
            <label class='control-label col-xs-2' for="parent">
                <g:message code="area.parent.label" default="Parent" />
            </label>
            <div class='col-xs-4'>
                <g:select class='form-control' id="parent" name="parent.id"
                from="${com.xpi.settle.sys.Area.list()}" optionKey="id"
                optionValue='name'
                noSelection="${['': message(code: 'select.no.label')]}"
                value="${areaInstance?.parent?.id}" class="many-to-one"/>
            </div>
        </div>
        </td></tr>

        <tr><td>
            <div class='form-group'>
                <label class='control-label col-xs-2' for="spell">
                    <g:message code="area.spell.label" default="Spell" />
                </label>
                <div class='col-xs-8'>
                    <g:textArea class='form-control' name="spell" cols="40" rows="3" maxlength="256" value="${areaInstance?.spell}"/>

                </div>
            </div>
        </td></tr>
    </table>
</div>

