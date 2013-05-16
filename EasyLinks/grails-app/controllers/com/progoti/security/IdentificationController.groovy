package com.progoti.security

import org.springframework.dao.DataIntegrityViolationException

class IdentificationController extends SearchableWorkaroundController{

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [identificationInstanceList: Identification.list(params), identificationInstanceTotal: Identification.count()]
    }

    def create() {
        [identificationInstance: new Identification(params)]
    }

    def save() {
        def identificationInstance = new Identification(params)
        if (!identificationInstance.save(flush: true)) {
            render(view: "create", model: [identificationInstance: identificationInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'identification.label', default: 'Identification'), identificationInstance.id])
        redirect(action: "show", id: identificationInstance.id)
    }

    def show(Long id) {
        def identificationInstance = Identification.get(id)
        if (!identificationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'identification.label', default: 'Identification'), id])
            redirect(action: "list")
            return
        }

        [identificationInstance: identificationInstance]
    }

    def edit(Long id) {
        def identificationInstance = Identification.get(id)
        if (!identificationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'identification.label', default: 'Identification'), id])
            redirect(action: "list")
            return
        }

        [identificationInstance: identificationInstance]
    }

    def update(Long id, Long version) {
        def identificationInstance = Identification.get(id)
        if (!identificationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'identification.label', default: 'Identification'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (identificationInstance.version > version) {
                identificationInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'identification.label', default: 'Identification')] as Object[],
                          "Another user has updated this Identification while you were editing")
                render(view: "edit", model: [identificationInstance: identificationInstance])
                return
            }
        }

        identificationInstance.properties = params

        if (!identificationInstance.save(flush: true)) {
            render(view: "edit", model: [identificationInstance: identificationInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'identification.label', default: 'Identification'), identificationInstance.id])
        redirect(action: "show", id: identificationInstance.id)
    }

    def delete(Long id) {
        def identificationInstance = Identification.get(id)
        if (!identificationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'identification.label', default: 'Identification'), id])
            redirect(action: "list")
            return
        }

        try {
            identificationInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'identification.label', default: 'Identification'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'identification.label', default: 'Identification'), id])
            redirect(action: "show", id: id)
        }
    }
}
