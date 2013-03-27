package com.diadelaregion

import org.springframework.dao.DataIntegrityViolationException
import grails.plugins.springsecurity.Secured

/**
 * ParejaController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class ParejaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    @Secured(['ROLE_ADMIN'])
    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [parejaInstanceList: Pareja.list(params), parejaInstanceTotal: Pareja.count()]
    }

    def create() {
        [parejaInstance: new Pareja(params)]
    }

    def save() {
        def parejaInstance = new Pareja(params)
        if (!parejaInstance.save(flush: true)) {
            render(view: "create", model: [parejaInstance: parejaInstance])
            return
        }

        sendMail {
          to parejaInstance.email
          subject "Te has registrado para el Día de la Región en Toledo el 14 de Abril"
          html g.render(template:"myMailTemplate", model: [parejaInstance: parejaInstance])
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'pareja.label', default: 'Pareja'), parejaInstance.id])
        redirect(action: "show", id: parejaInstance.id)
    }

    def show() {
        def parejaInstance = Pareja.get(params.id)
        if (!parejaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'pareja.label', default: 'Pareja'), params.id])
            redirect(action: "list")
            return
        }

        [parejaInstance: parejaInstance]
    }

    def edit() {
        def parejaInstance = Pareja.get(params.id)
        if (!parejaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pareja.label', default: 'Pareja'), params.id])
            redirect(action: "list")
            return
        }

        [parejaInstance: parejaInstance]
    }

    def update() {
        def parejaInstance = Pareja.get(params.id)
        if (!parejaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pareja.label', default: 'Pareja'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (parejaInstance.version > version) {
                parejaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'pareja.label', default: 'Pareja')] as Object[],
                          "Another user has updated this Pareja while you were editing")
                render(view: "edit", model: [parejaInstance: parejaInstance])
                return
            }
        }

        parejaInstance.properties = params

        if (!parejaInstance.save(flush: true)) {
            render(view: "edit", model: [parejaInstance: parejaInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'pareja.label', default: 'Pareja'), parejaInstance.id])
        redirect(action: "show", id: parejaInstance.id)
    }

    @Secured(['ROLE_ADMIN'])
    def delete() {
        def parejaInstance = Pareja.get(params.id)
        if (!parejaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'pareja.label', default: 'Pareja'), params.id])
            redirect(action: "list")
            return
        }

        try {
            parejaInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'pareja.label', default: 'Pareja'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'pareja.label', default: 'Pareja'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
