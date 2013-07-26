package com.github.ekklesia.administracao

import org.springframework.dao.DataIntegrityViolationException

/**
 * RedeMinisterialController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class RedeMinisterialController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [redeMinisterialInstanceList: RedeMinisterial.list(params), redeMinisterialInstanceTotal: RedeMinisterial.count()]
    }

    def create() {
        [redeMinisterialInstance: new RedeMinisterial(params)]
    }

    def save() {
        def redeMinisterialInstance = new RedeMinisterial(params)
        if (!redeMinisterialInstance.save(flush: true)) {
            render(view: "create", model: [redeMinisterialInstance: redeMinisterialInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'redeMinisterial.label', default: 'RedeMinisterial'), redeMinisterialInstance.id])
        redirect(action: "show", id: redeMinisterialInstance.id)
    }

    def show() {
        def redeMinisterialInstance = RedeMinisterial.get(params.id)
        if (!redeMinisterialInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'redeMinisterial.label', default: 'RedeMinisterial'), params.id])
            redirect(action: "list")
            return
        }

        [redeMinisterialInstance: redeMinisterialInstance]
    }

    def edit() {
        def redeMinisterialInstance = RedeMinisterial.get(params.id)
        if (!redeMinisterialInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'redeMinisterial.label', default: 'RedeMinisterial'), params.id])
            redirect(action: "list")
            return
        }

        [redeMinisterialInstance: redeMinisterialInstance]
    }

    def update() {
        def redeMinisterialInstance = RedeMinisterial.get(params.id)
        if (!redeMinisterialInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'redeMinisterial.label', default: 'RedeMinisterial'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (redeMinisterialInstance.version > version) {
                redeMinisterialInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'redeMinisterial.label', default: 'RedeMinisterial')] as Object[],
                          "Another user has updated this RedeMinisterial while you were editing")
                render(view: "edit", model: [redeMinisterialInstance: redeMinisterialInstance])
                return
            }
        }

        redeMinisterialInstance.properties = params

        if (!redeMinisterialInstance.save(flush: true)) {
            render(view: "edit", model: [redeMinisterialInstance: redeMinisterialInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'redeMinisterial.label', default: 'RedeMinisterial'), redeMinisterialInstance.id])
        redirect(action: "show", id: redeMinisterialInstance.id)
    }

    def delete() {
        def redeMinisterialInstance = RedeMinisterial.get(params.id)
        if (!redeMinisterialInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'redeMinisterial.label', default: 'RedeMinisterial'), params.id])
            redirect(action: "list")
            return
        }

        try {
            redeMinisterialInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'redeMinisterial.label', default: 'RedeMinisterial'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'redeMinisterial.label', default: 'RedeMinisterial'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
