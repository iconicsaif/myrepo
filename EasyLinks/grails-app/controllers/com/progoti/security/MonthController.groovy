package com.progoti.security

import org.springframework.dao.DataIntegrityViolationException

class MonthController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [monthInstanceList: Month.list(params), monthInstanceTotal: Month.count()]
    }

    def create() {
        [monthInstance: new Month(params)]
    }

    def save() {
        def monthInstance = new Month(params)
        if (!monthInstance.save(flush: true)) {
            render(view: "create", model: [monthInstance: monthInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'month.label', default: 'Month'), monthInstance.id])
        redirect(action: "show", id: monthInstance.id)
    }

    def show(Long id) {
        def monthInstance = Month.get(id)
        if (!monthInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'month.label', default: 'Month'), id])
            redirect(action: "list")
            return
        }

        [monthInstance: monthInstance]
    }

    def edit(Long id) {
        def monthInstance = Month.get(id)
        if (!monthInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'month.label', default: 'Month'), id])
            redirect(action: "list")
            return
        }

        [monthInstance: monthInstance]
    }

    def update(Long id, Long version) {
        def monthInstance = Month.get(id)
        if (!monthInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'month.label', default: 'Month'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (monthInstance.version > version) {
                monthInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'month.label', default: 'Month')] as Object[],
                          "Another user has updated this Month while you were editing")
                render(view: "edit", model: [monthInstance: monthInstance])
                return
            }
        }

        monthInstance.properties = params

        if (!monthInstance.save(flush: true)) {
            render(view: "edit", model: [monthInstance: monthInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'month.label', default: 'Month'), monthInstance.id])
        redirect(action: "show", id: monthInstance.id)
    }

    def delete(Long id) {
        def monthInstance = Month.get(id)
        if (!monthInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'month.label', default: 'Month'), id])
            redirect(action: "list")
            return
        }

        try {
            monthInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'month.label', default: 'Month'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'month.label', default: 'Month'), id])
            redirect(action: "show", id: id)
        }
    }
}
