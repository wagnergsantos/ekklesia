package com.github.ekklesia.secretaria

import org.springframework.dao.DataIntegrityViolationException

/**
 * ParticipanteController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class ParticipanteController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [participanteInstanceList: Participante.list(params), participanteInstanceTotal: Participante.count()]
    }

    def create() {
        [participanteInstance: new Participante(params)]
    }

    def save() {
        def participanteInstance = new Participante(params)
        if (!participanteInstance.save(flush: true)) {
            render(view: "create", model: [participanteInstance: participanteInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'participante.label', default: 'Participante'), participanteInstance.id])
        redirect(action: "show", id: participanteInstance.id)
    }

    def show() {
        def participanteInstance = Participante.get(params.id)
        if (!participanteInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'participante.label', default: 'Participante'), params.id])
            redirect(action: "list")
            return
        }

        [participanteInstance: participanteInstance]
    }

    def edit() {
        def participanteInstance = Participante.get(params.id)
        if (!participanteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'participante.label', default: 'Participante'), params.id])
            redirect(action: "list")
            return
        }

        [participanteInstance: participanteInstance]
    }

    def update() {
        def participanteInstance = Participante.get(params.id)
        if (!participanteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'participante.label', default: 'Participante'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (participanteInstance.version > version) {
                participanteInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'participante.label', default: 'Participante')] as Object[],
                          "Another user has updated this Participante while you were editing")
                render(view: "edit", model: [participanteInstance: participanteInstance])
                return
            }
        }

        participanteInstance.properties = params

        if (!participanteInstance.save(flush: true)) {
            render(view: "edit", model: [participanteInstance: participanteInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'participante.label', default: 'Participante'), participanteInstance.id])
        redirect(action: "show", id: participanteInstance.id)
    }

    def delete() {
        def participanteInstance = Participante.get(params.id)
        if (!participanteInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'participante.label', default: 'Participante'), params.id])
            redirect(action: "list")
            return
        }

        try {
            participanteInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'participante.label', default: 'Participante'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'participante.label', default: 'Participante'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
