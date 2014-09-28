<%@ page import="com.xpi.settle.sys.Organization" %>

<div>
    <table class="table table-bordered text-right">
        <tr>
            <td>

                <div class="form-group required">
                    <label class='control-label col-xs-2' for="code">
                        <g:message code="organization.code.label" default="Code" />
                    </label>
                    <div class='col-xs-4'>
                        <g:textField class='form-control' name="code" maxlength="32" required="" value="${organizationInstance?.code}"/>
                    </div>
                </div>
            </td>
        </tr>


        <tr>
            <td>

                <div class="form-group required">
                    <label class='control-label col-xs-2' for="name">
                        <g:message code="organization.name.label" default="Name" />
                    </label>
                    <div class='col-xs-4'>
                        <g:textField class='form-control' name="name" maxlength="32" required="" value="${organizationInstance?.name}"/>
                    </div>
                </div>

            </td>
        </tr>

        <tr>
            <td>

                <div class="form-group required">
                    <label class='control-label col-xs-2' for="area">
                        <g:message code="organization.area.label" default="Area" />
                    </label>
                    <div class='col-xs-4'>
                        <g:select class='form-control' id="area" name="area.id" from="${com.xpi.settle.sys.Area.list()}" optionKey="id" required="" value="${organizationInstance?.area?.id}" class="many-to-one"/>

                    </div>
                </div>

            </td>
        </tr>

        <tr>
            <td>

                <div class="form-group required">
                    <label class='control-label col-xs-2' for="address">
                        <g:message code="organization.address.label" default="Address" />

                    </label>
                    <div class='col-xs-8'>
                        <g:textArea class='form-control' name="address"  required="" cols="40" rows="3" maxlength="256" value="${organizationInstance?.address}"/>

                    </div>
                </div>


            </td>
        </tr>

        <tr>
            <td>



                <div class="form-group required">
                    <label class='control-label col-xs-2' for="level">
                        <g:message code="organization.level.label" default="Level" />

                    </label>
                    <div class='col-xs-4'>
                        <g:field class='form-control' name="level"  required="" type="number" min="0" value="${organizationInstance.level}"/>

                    </div>
                </div>

            </td>
        </tr>

        <tr>
            <td>


                <div class="form-group">
                    <label class='control-label col-xs-2' for="parent">
                        <g:message code="organization.parent.label" default="Parent" />
                    </label>
                    <div class='col-xs-4'>
                        <g:select class='form-control' id="parent" name="parent.id"
                                  from="${com.xpi.settle.sys.Organization.list()}" optionKey="id"
                                  optionValue='name'
                                  noSelection="${['': message(code: 'select.no.label')]}"
                                  value="${organizationInstance?.parent?.id}" class="many-to-one"/>

                    </div>
                </div>

            </td>
        </tr>

        <tr>
            <td>


                <div class="form-group">
                    <label class='control-label col-xs-2' for="leader">
                        <g:message code="organization.leader.label" default="Leader" />

                    </label>
                    <div class='col-xs-4'>
                        <g:textField class='form-control' name="leader" maxlength="32" value="${organizationInstance?.leader}"/>

                    </div>
                </div>


            </td>
        </tr>

        <tr>
            <td>


                <div class="form-group">
                    <label class='control-label col-xs-2' for="contact">
                        <g:message code="organization.contact.label" default="Contact" />

                    </label>
                    <div class='col-xs-4'>
                        <g:textField class='form-control' name="contact" maxlength="32" value="${organizationInstance?.contact}"/>

                    </div>
                </div>


            </td>
        </tr>

        <tr>
            <td>


                <div class="form-group">
                    <label class='control-label col-xs-2' for="memo">
                        <g:message code="organization.memo.label" default="Memo" />

                    </label>
                    <div class='col-xs-8'>
                        <g:textArea class='form-control' name="memo" cols="40" rows="3" maxlength="256" value="${organizationInstance?.memo}"/>

                    </div>
                </div>




            </td></tr>
    </table>
</div>