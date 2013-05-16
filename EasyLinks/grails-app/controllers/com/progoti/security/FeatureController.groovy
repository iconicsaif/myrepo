package com.progoti.security

import org.springframework.dao.DataIntegrityViolationException

class FeatureController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [featureInstanceList: Feature.list(params), featureInstanceTotal: Feature.count()]
    }

    def create() {
        [featureInstance: new Feature(params)]
    }

    def save() {
        def featureInstance = new Feature(params)
        if (!featureInstance.save(flush: true)) {
            render(view: "create", model: [featureInstance: featureInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'feature.label', default: 'Feature'), featureInstance.id])
        redirect(action: "show", id: featureInstance.id)
    }

    def show(Long id) {
        def featureInstance = Feature.get(id)
        if (!featureInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'feature.label', default: 'Feature'), id])
            redirect(action: "list")
            return
        }

        [featureInstance: featureInstance]
    }

    def edit(Long id) {
        def featureInstance = Feature.get(id)
        if (!featureInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'feature.label', default: 'Feature'), id])
            redirect(action: "list")
            return
        }

        [featureInstance: featureInstance]
    }

    def update(Long id, Long version) {
        def featureInstance = Feature.get(id)
        if (!featureInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'feature.label', default: 'Feature'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (featureInstance.version > version) {
                featureInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'feature.label', default: 'Feature')] as Object[],
                          "Another user has updated this Feature while you were editing")
                render(view: "edit", model: [featureInstance: featureInstance])
                return
            }
        }

        featureInstance.properties = params

        if (!featureInstance.save(flush: true)) {
            render(view: "edit", model: [featureInstance: featureInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'feature.label', default: 'Feature'), featureInstance.id])
        redirect(action: "show", id: featureInstance.id)
    }

    def delete(Long id) {
        def featureInstance = Feature.get(id)
        if (!featureInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'feature.label', default: 'Feature'), id])
            redirect(action: "list")
            return
        }

        try {
            featureInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'feature.label', default: 'Feature'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'feature.label', default: 'Feature'), id])
            redirect(action: "show", id: id)
        }
    }
}
