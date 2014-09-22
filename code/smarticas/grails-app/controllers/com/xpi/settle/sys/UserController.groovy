package com.xpi.settle.sys

import grails.converters.JSON
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN'])
class UserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def springSecurityService

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond User.list(params), model:[userInstanceCount: User.count()]
    }

    /**
     * Retrieve all user in json format, 
     * which will be use to render DataTables.
     * @param max, offset, sort, order
     * @return DataTables json format
     */
     def getUsersTable() {

        def principal = springSecurityService.principal

        def orderIndex = params."order[0][column]"
        def index = "columns[" + orderIndex + "][name]"
        def sort = params."$index" ?: 'id'
        def orderDir = params."order[0][dir]" ?: 'asc'
        def firstResult = params.start ?: 0
        def maxResults = params.length ?: 10
        def filter = params."search[value]" ?: ''
        def criteria = User.createCriteria()
        def users = criteria.list(max: maxResults, 
                                offset: firstResult,
                                sort: sort,
                                order: orderDir) { 
            ne('id', principal.id)
            createAlias('organization', 'o')
            if(sort == 'organization') {
                order('o.name', orderDir)
            }
            if(filter != '') {
                or {
                    ilike('username', "%$filter%")
                    ilike('email', "%$filter%")
                    ilike('name', "%$filter%")
                    ilike('phone', "%$filter%")
                    ilike('address', "%$filter%")
                    ilike('idCard', "%$filter%")
                    ilike('o.name', "%$filter%")
                }
            }
        }
        
        def recordsTotal = User.createCriteria().count {}
        def usersTable = []
        users.each { user -> 
            usersTable << [
                user.id,
                user.username,
                user.email,
                user.name,
                user.phone,
                user.address,
                user.idCard,
                user.organization?.name
            ]
        }

        def data = ['data': usersTable,
                    'recordsFiltered': users.totalCount,
                    'recordsTotal': recordsTotal]
        render data as JSON
     }

    def show(User userInstance) {
        respond userInstance
    }

    def create() {
        respond new User(params)
    }

    @Transactional
    def save(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        // get role of the user
        def role = Role.get(params.role)
        if(role == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'create'
            return
        }

        userInstance.save flush:true
        SecUserSecRole.create userInstance, role

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'userInstance.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: CREATED] }
        }
    }

    def edit(User userInstance) {
        respond userInstance
    }

    @Transactional
    def update(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'edit'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*'{ respond userInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(User userInstance) {

        if (userInstance == null) {
            notFound()
            return
        }

        userInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'userInstance.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
