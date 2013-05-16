package com.progoti.common

import org.springframework.dao.DataIntegrityViolationException

class PaymentRequestController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [paymentRequestInstanceList: PaymentRequest.list(params), paymentRequestInstanceTotal: PaymentRequest.count()]
    }

    def create() {
        [paymentRequestInstance: new PaymentRequest(params)]
    }

    def save() {
        def paymentRequestInstance = new PaymentRequest(params)
        if (!paymentRequestInstance.save(flush: true)) {
            render(view: "create", model: [paymentRequestInstance: paymentRequestInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'paymentRequest.label', default: 'PaymentRequest'), paymentRequestInstance.id])
        redirect(action: "show", id: paymentRequestInstance.id)
    }

    def show(Long id) {
        def paymentRequestInstance = PaymentRequest.get(id)
        if (!paymentRequestInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'paymentRequest.label', default: 'PaymentRequest'), id])
            redirect(action: "list")
            return
        }

        [paymentRequestInstance: paymentRequestInstance]
    }

    def edit(Long id) {
        def paymentRequestInstance = PaymentRequest.get(id)
        if (!paymentRequestInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'paymentRequest.label', default: 'PaymentRequest'), id])
            redirect(action: "list")
            return
        }

        [paymentRequestInstance: paymentRequestInstance]
    }

    def update(Long id, Long version) {
        def paymentRequestInstance = PaymentRequest.get(id)
        if (!paymentRequestInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'paymentRequest.label', default: 'PaymentRequest'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (paymentRequestInstance.version > version) {
                paymentRequestInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'paymentRequest.label', default: 'PaymentRequest')] as Object[],
                          "Another user has updated this PaymentRequest while you were editing")
                render(view: "edit", model: [paymentRequestInstance: paymentRequestInstance])
                return
            }
        }

        paymentRequestInstance.properties = params

        if (!paymentRequestInstance.save(flush: true)) {
            render(view: "edit", model: [paymentRequestInstance: paymentRequestInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'paymentRequest.label', default: 'PaymentRequest'), paymentRequestInstance.id])
        redirect(action: "show", id: paymentRequestInstance.id)
    }

    def delete(Long id) {
        def paymentRequestInstance = PaymentRequest.get(id)
        if (!paymentRequestInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'paymentRequest.label', default: 'PaymentRequest'), id])
            redirect(action: "list")
            return
        }

        try {
            paymentRequestInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'paymentRequest.label', default: 'PaymentRequest'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'paymentRequest.label', default: 'PaymentRequest'), id])
            redirect(action: "show", id: id)
        }
    }
}
