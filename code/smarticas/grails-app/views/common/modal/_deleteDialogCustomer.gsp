<!-- 
This is the standard dialog that initiates the delete action.
-->

<!-- Modal dialog -->
<div id="DeleteModalCustomer" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="DeleteModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>

                <h3 id="DeleteModalLabel"><g:message code="default.delete.title"/></h3>
            </div>

            <div class="modal-body">
                <p><g:message code="default.dialog.delete.confirm.message" args="[entityName]"/></p>
            </div>

            <div class="modal-footer">
                <g:form>
                    <button class="btn" data-dismiss="modal" aria-hidden="true"><g:message
                            code="default.button.cancel.label"/></button>
                    <g:hiddenField name="id" value="${item ? item.id : params.id}"/>
                    <g:hiddenField name="_method" value="DELETE"/>
                    <span class="button"><g:actionSubmit class="btn btn-danger" action="deleteCustomer"
                                                         value="${message(code: 'default.button.delete.label')}"/></span>
                </g:form>
            </div>
        </div>
    </div>
</div>