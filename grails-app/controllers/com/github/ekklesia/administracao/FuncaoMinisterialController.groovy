package com.github.ekklesia.administracao

import org.springframework.dao.DataIntegrityViolationException

/**
 * FuncaoMinisterialController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class FuncaoMinisterialController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [funcaoMinisterialInstanceList: FuncaoMinisterial.list(params), funcaoMinisterialInstanceTotal: FuncaoMinisterial.count()]
    }

    def create() {
        [funcaoMinisterialInstance: new FuncaoMinisterial(params)]
    }

    def save() {
        def funcaoMinisterialInstance = new FuncaoMinisterial(params)
        if (!funcaoMinisterialInstance.save(flush: true)) {
            render(view: "create", model: [funcaoMinisterialInstance: funcaoMinisterialInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'funcaoMinisterial.label', default: 'FuncaoMinisterial'), funcaoMinisterialInstance.id])
        redirect(action: "show", id: funcaoMinisterialInstance.id)
    }

    def show() {
        def funcaoMinisterialInstance = FuncaoMinisterial.get(params.id)
        if (!funcaoMinisterialInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'funcaoMinisterial.label', default: 'FuncaoMinisterial'), params.id])
            redirect(action: "list")
            return
        }

        [funcaoMinisterialInstance: funcaoMinisterialInstance]
    }

    def edit() {
        def funcaoMinisterialInstance = FuncaoMinisterial.get(params.id)
        if (!funcaoMinisterialInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'funcaoMinisterial.label', default: 'FuncaoMinisterial'), params.id])
            redirect(action: "list")
            return
        }

        [funcaoMinisterialInstance: funcaoMinisterialInstance]
    }

    def update() {
        def funcaoMinisterialInstance = FuncaoMinisterial.get(params.id)
        if (!funcaoMinisterialInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'funcaoMinisterial.label', default: 'FuncaoMinisterial'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (funcaoMinisterialInstance.version > version) {
                funcaoMinisterialInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'funcaoMinisterial.label', default: 'FuncaoMinisterial')] as Object[],
                          "Another user has updated this FuncaoMinisterial while you were editing")
                render(view: "edit", model: [funcaoMinisterialInstance: funcaoMinisterialInstance])
                return
            }
        }

        funcaoMinisterialInstance.properties = params

        if (!funcaoMinisterialInstance.save(flush: true)) {
            render(view: "edit", model: [funcaoMinisterialInstance: funcaoMinisterialInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'funcaoMinisterial.label', default: 'FuncaoMinisterial'), funcaoMinisterialInstance.id])
        redirect(action: "show", id: funcaoMinisterialInstance.id)
    }

    def delete() {
        def funcaoMinisterialInstance = FuncaoMinisterial.get(params.id)
        if (!funcaoMinisterialInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'funcaoMinisterial.label', default: 'FuncaoMinisterial'), params.id])
            redirect(action: "list")
            return
        }

        try {
            funcaoMinisterialInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'funcaoMinisterial.label', default: 'FuncaoMinisterial'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'funcaoMinisterial.label', default: 'FuncaoMinisterial'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
