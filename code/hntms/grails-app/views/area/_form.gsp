<%@ page import="com.xpi.settle.sys.Area" %>



<div class="fieldcontain ${hasErrors(bean: areaInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="area.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" maxlength="32" required="" value="${areaInstance?.code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: areaInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="area.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="name" cols="40" rows="5" maxlength="256" required="" value="${areaInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: areaInstance, field: 'spell', 'error')} ">
	<label for="spell">
		<g:message code="area.spell.label" default="Spell" />
		
	</label>
	<g:textArea name="spell" cols="40" rows="5" maxlength="256" value="${areaInstance?.spell}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: areaInstance, field: 'level', 'error')} ">
	<label for="level">
		<g:message code="area.level.label" default="Level" />
		
	</label>
	<g:field name="level" type="number" min="0" value="${areaInstance.level}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: areaInstance, field: 'reserve1', 'error')} ">
	<label for="reserve1">
		<g:message code="area.reserve1.label" default="Reserve1" />
		
	</label>
	<g:textArea name="reserve1" cols="40" rows="5" maxlength="256" value="${areaInstance?.reserve1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: areaInstance, field: 'reserve2', 'error')} ">
	<label for="reserve2">
		<g:message code="area.reserve2.label" default="Reserve2" />
		
	</label>
	<g:textArea name="reserve2" cols="40" rows="5" maxlength="256" value="${areaInstance?.reserve2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: areaInstance, field: 'reserve3', 'error')} ">
	<label for="reserve3">
		<g:message code="area.reserve3.label" default="Reserve3" />
		
	</label>
	<g:textArea name="reserve3" cols="40" rows="5" maxlength="256" value="${areaInstance?.reserve3}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: areaInstance, field: 'parent', 'error')} required">
	<label for="parent">
		<g:message code="area.parent.label" default="Parent" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="parent" name="parent.id" from="${com.xpi.settle.sys.Area.list()}" optionKey="id" required="" value="${areaInstance?.parent?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: areaInstance, field: 'children', 'error')} ">
	<label for="children">
		<g:message code="area.children.label" default="Children" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${areaInstance?.children?}" var="c">
    <li><g:link controller="area" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="area" action="create" params="['area.id': areaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'area.label', default: 'Area')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: areaInstance, field: 'organizations', 'error')} ">
	<label for="organizations">
		<g:message code="area.organizations.label" default="Organizations" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${areaInstance?.organizations?}" var="o">
    <li><g:link controller="organization" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="organization" action="create" params="['area.id': areaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'organization.label', default: 'Organization')])}</g:link>
</li>
</ul>


</div>

