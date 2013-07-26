package com.github.ekklesia.secretaria

import org.springframework.dao.DataIntegrityViolationException

/**
 * CelulaController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class CelulaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [celulaInstanceList: Celula.list(params), celulaInstanceTotal: Celula.count()]
    }

    def create() {
        [celulaInstance: new Celula(params)]
    }

    def save() {
        def celulaInstance = new Celula(params)
        if (!celulaInstance.save(flush: true)) {
            render(view: "create", model: [celulaInstance: celulaInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'celula.label', default: 'Celula'), celulaInstance.id])
        redirect(action: "show", id: celulaInstance.id)
    }

    def show() {
        def celulaInstance = Celula.get(params.id)
        if (!celulaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'celula.label', default: 'Celula'), params.id])
            redirect(action: "list")
            return
        }

        [celulaInstance: celulaInstance]
    }

    def edit() {
        def celulaInstance = Celula.get(params.id)
        if (!celulaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'celula.label', default: 'Celula'), params.id])
            redirect(action: "list")
            return
        }

        [celulaInstance: celulaInstance]
    }

    def update() {
        def celulaInstance = Celula.get(params.id)
        if (!celulaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'celula.label', default: 'Celula'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (celulaInstance.version > version) {
                celulaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'celula.label', default: 'Celula')] as Object[],
                          "Another user has updated this Celula while you were editing")
                render(view: "edit", model: [celulaInstance: celulaInstance])
                return
            }
        }

        celulaInstance.properties = params

        if (!celulaInstance.save(flush: true)) {
            render(view: "edit", model: [celulaInstance: celulaInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'celula.label', default: 'Celula'), celulaInstance.id])
        redirect(action: "show", id: celulaInstance.id)
    }

    def delete() {
        def celulaInstance = Celula.get(params.id)
        if (!celulaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'celula.label', default: 'Celula'), params.id])
            redirect(action: "list")
            return
        }

        try {
            celulaInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'celula.label', default: 'Celula'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'celula.label', default: 'Celula'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
