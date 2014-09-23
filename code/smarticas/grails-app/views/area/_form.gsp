<%@ page import="com.xpi.settle.sys.Area" %>

<div class="table table-bordered">
    <table class="table">
        <thead>
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
        </tr></td>

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
        </tr></td>

        <tr><td>
            <div class='form-group'>
                <label class='control-label col-xs-2' for="children">
                    <g:message code="area.children.label" default="Children" />
                </label>
                <div class='col-xs-4'>
                    <ul class="one-to-many">
                    <g:each in="${areaInstance?.children?}" var="c">
                        <li><g:link controller="area" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
                    </g:each>
                    <li class="add">
                    <g:link controller="area" action="create" params="['area.id': areaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'area.label', default: 'Area')])}</g:link>
                    </li>
                    </ul>
                </div>
        </div>
        </tr></td>

        <tr><td>
            <div class='form-group'>
	            <label class='control-label col-xs-2' for="organizations">
		            <g:message code="area.organizations.label" default="Organizations" />
                </label>
                <div class='col-xs-4'>
                    <ul class="one-to-many">
                    <g:each in="${areaInstance?.organizations?}" var="o">
                        <li><g:link controller="organization" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
                    </g:each>
                    <li class="add">
                    <g:link controller="organization" action="create" params="['area.id': areaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'organization.label', default: 'Organization')])}</g:link>
                    </li>
                    </ul>
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
        </tr></td>


        </thead>
    </table>
</div>

