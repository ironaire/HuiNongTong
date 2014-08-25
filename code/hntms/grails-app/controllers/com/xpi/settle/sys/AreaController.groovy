package com.xpi.settle.sys

import static org.springframework.http.HttpStatus.*

import grails.converters.JSON
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN', 'ROLE_USER'])
class AreaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Area.list(params), model:[areaInstanceCount: Area.count()]
    }

    /**
     * Retrieve all area in json format, 
     * which will be use to render DataTables.
     * @param max, offset, sort, order
     * @return DataTables json format
     */
     def getAreasTable() {
        def orderIndex = params."order[0][column]"
        def index = "columns[" + orderIndex + "][name]"
        def sort = params."$index" ?: 'id'
        def orderDir = params."order[0][dir]" ?: 'asc'
        def firstResult = params.start ?: 0
        def maxResults = params.length ?: 10
        def filter = params."search[value]" ?: ''
        def criteria = Area.createCriteria()
        def areas = criteria.list(max: maxResults, 
                                offset: firstResult,
                                sort: sort,
                                order: orderDir) {
            or {
                ilike('code', "%$filter%")
                ilike('name', "%$filter%")
                ilike('spell', "%$filter%")
                ilike('reserve1', "%$filter%")
                ilike('reserve2', "%$filter%")
            }
        }
        
        def recordsTotal = Area.createCriteria().count()
        def areasTable = []
        areas.each { area -> 
            areasTable << [
                area.id,
                area.code,
                area.name,
                area.spell,
                area.level,
                area.reserve1,
                area.reserve2
            ]
        }

        def data = ['data': areasTable,
                    'recordsFiltered': areas.totalCount,
                    'recordsTotal': recordsTotal]
        render data as JSON
     }

    def show(Area areaInstance) {
        respond areaInstance
    }

    def create() {
        respond new Area(params)
    }

    @Transactional
    def save(Area areaInstance) {
        if (areaInstance == null) {
            notFound()
            return
        }

        if (areaInstance.hasErrors()) {
            respond areaInstance.errors, view:'create'
            return
        }

        areaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'areaInstance.label', default: 'Area'), areaInstance.id])
                redirect areaInstance
            }
            '*' { respond areaInstance, [status: CREATED] }
        }
    }

    def edit(Area areaInstance) {
        respond areaInstance
    }

    @Transactional
    def update(Area areaInstance) {
        if (areaInstance == null) {
            notFound()
            return
        }

        if (areaInstance.hasErrors()) {
            respond areaInstance.errors, view:'edit'
            return
        }

        areaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Area.label', default: 'Area'), areaInstance.id])
                redirect areaInstance
            }
            '*'{ respond areaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Area areaInstance) {

        if (areaInstance == null) {
            notFound()
            return
        }

        areaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Area.label', default: 'Area'), areaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'areaInstance.label', default: 'Area'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
