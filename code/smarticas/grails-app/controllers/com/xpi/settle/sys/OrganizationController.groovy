package com.xpi.settle.sys

import grails.converters.JSON

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN'])
class OrganizationController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Organization.list(params), model:[organizationInstanceCount: Organization.count()]
    }


    /**
     * Retrieve all organization in json format, 
     * which will be use to render DataTables.
     * @param max, offset, sort, order
     * @return DataTables json format
     */
     def getOrganizationsTable() {
        def orderIndex = params."order[0][column]"
        def index = "columns[" + orderIndex + "][name]"
        def sort = params."$index" ?: 'id'
        def orderDir = params."order[0][dir]" ?: 'asc'
        def firstResult = params.start ?: 0
        def maxResults = params.length ?: 10
        def filter = params."search[value]" ?: ''
        def criteria = Organization.createCriteria()
        def organizations = criteria.list(max: maxResults, 
                                offset: firstResult,
                                sort: sort,
                                order: orderDir) { 
            ne('name', 'Smarticas')
            createAlias('area', 'a')
            if(sort == 'area') {
                order('a.name', orderDir)
            }
            if(filter != '') {
                or {
                    ilike('code', "%$filter%")
                    ilike('name', "%$filter%")
                    ilike('address', "%$filter%")
                    ilike('leader', "%$filter%")
                    ilike('contact', "%$filter%")
                    ilike('bank', "%$filter%")
                    ilike('a.name', "%$filter%")
                    ilike('a.name', "%$filter%")
                }
            }
        }
        
        def recordsTotal = Organization.createCriteria().count {}
        def organizationsTable = []
        organizations.each { organization -> 
            organizationsTable << [
                organization.id,
                organization.code,
                organization.name,
                organization.address,
                organization.leader,
                organization.contact,
                organization.bank,
                organization.level,
                organization.area?.name
            ]
        }

        def data = ['data': organizationsTable,
                    'recordsFiltered': organizations.totalCount,
                    'recordsTotal': recordsTotal]
        render data as JSON
     }

    def show(Organization organizationInstance) {
        respond organizationInstance
    }

    def create() {
        respond new Organization(params)
    }

    @Transactional
    def save(Organization organizationInstance) {
        if (organizationInstance == null) {
            notFound()
            return
        }

        if (organizationInstance.hasErrors()) {
            respond organizationInstance.errors, view:'create'
            return
        }

        organizationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'organizationInstance.label', default: 'Organization'), organizationInstance.id])
                redirect organizationInstance
            }
            '*' { respond organizationInstance, [status: CREATED] }
        }
    }

    def edit(Organization organizationInstance) {
        respond organizationInstance
    }

    @Transactional
    def update(Organization organizationInstance) {
        if (organizationInstance == null) {
            notFound()
            return
        }

        if (organizationInstance.hasErrors()) {
            respond organizationInstance.errors, view:'edit'
            return
        }

        organizationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Organization.label', default: 'Organization'), organizationInstance.id])
                redirect organizationInstance
            }
            '*'{ respond organizationInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Organization organizationInstance) {

        if (organizationInstance == null) {
            notFound()
            return
        }

        organizationInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Organization.label', default: 'Organization'), organizationInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'organizationInstance.label', default: 'Organization'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
