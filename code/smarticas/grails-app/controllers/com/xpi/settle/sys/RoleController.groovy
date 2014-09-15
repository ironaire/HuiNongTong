package com.xpi.settle.sys

import static org.springframework.http.HttpStatus.*

import grails.converters.JSON
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN'])
class RoleController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Role.list(params), model:[roleInstanceCount: Role.count()]
    }

    /**
     * Retrieve all role in json format, 
     * which will be use to render DataTables.
     * @param max, offset, sort, order
     * @return DataTables json format
     */
     def getRolesTable() {
        def orderIndex = params."order[0][column]"
        def index = "columns[" + orderIndex + "][name]"
        def sort = params."$index" ?: 'id'
        def orderDir = params."order[0][dir]" ?: 'asc'
        def firstResult = params.start ?: 0
        def maxResults = params.length ?: 10
        def filter = params."search[value]" ?: ''
        def criteria = Role.createCriteria()
        def roles = criteria.list(max: maxResults, 
                                offset: firstResult,
                                sort: sort,
                                order: orderDir) { 
            if(filter != '') {
                or {
                    ilike('authority', "%$filter%")
                }
            }
        }
        
        def recordsTotal = Role.createCriteria().count {}
        def rolesTable = []
        roles.each { role -> 
            rolesTable << [
                role.id,
                role.authority
            ]
        }

        def data = ['data': rolesTable,
                    'recordsFiltered': roles.totalCount,
                    'recordsTotal': recordsTotal]
        render data as JSON
     }
    def show(Role roleInstance) {
        respond roleInstance
    }

    def create() {
        respond new Role(params)
    }

    @Transactional
    def save(Role roleInstance) {
        if (roleInstance == null) {
            notFound()
            return
        }

        if (roleInstance.hasErrors()) {
            respond roleInstance.errors, view:'create'
            return
        }

        roleInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'roleInstance.label', default: 'Role'), roleInstance.id])
                redirect roleInstance
            }
            '*' { respond roleInstance, [status: CREATED] }
        }
    }

    def edit(Role roleInstance) {
        respond roleInstance
    }

    @Transactional
    def update(Role roleInstance) {
        if (roleInstance == null) {
            notFound()
            return
        }

        if (roleInstance.hasErrors()) {
            respond roleInstance.errors, view:'edit'
            return
        }

        roleInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Role.label', default: 'Role'), roleInstance.id])
                redirect roleInstance
            }
            '*'{ respond roleInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Role roleInstance) {

        if (roleInstance == null) {
            notFound()
            return
        }

        roleInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Role.label', default: 'Role'), roleInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'roleInstance.label', default: 'Role'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
