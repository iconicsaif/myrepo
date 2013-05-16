package com.progoti.security

import org.springframework.dao.DataIntegrityViolationException

class DrivingLicenseController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [drivingLicenseInstanceList: DrivingLicense.list(params), drivingLicenseInstanceTotal: DrivingLicense.count()]
    }

    def create() {
        [drivingLicenseInstance: new DrivingLicense(params)]
    }

    def save() {
        def drivingLicenseInstance = new DrivingLicense(params)
        if (!drivingLicenseInstance.save(flush: true)) {
            render(view: "create", model: [drivingLicenseInstance: drivingLicenseInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'drivingLicense.label', default: 'DrivingLicense'), drivingLicenseInstance.id])
        redirect(action: "show", id: drivingLicenseInstance.id)
    }

    def show(Long id) {
        def drivingLicenseInstance = DrivingLicense.get(id)
        if (!drivingLicenseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'drivingLicense.label', default: 'DrivingLicense'), id])
            redirect(action: "list")
            return
        }

        [drivingLicenseInstance: drivingLicenseInstance]
    }

    def edit(Long id) {
        def drivingLicenseInstance = DrivingLicense.get(id)
        if (!drivingLicenseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'drivingLicense.label', default: 'DrivingLicense'), id])
            redirect(action: "list")
            return
        }

        [drivingLicenseInstance: drivingLicenseInstance]
    }

    def update(Long id, Long version) {
        def drivingLicenseInstance = DrivingLicense.get(id)
        if (!drivingLicenseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'drivingLicense.label', default: 'DrivingLicense'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (drivingLicenseInstance.version > version) {
                drivingLicenseInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'drivingLicense.label', default: 'DrivingLicense')] as Object[],
                          "Another user has updated this DrivingLicense while you were editing")
                render(view: "edit", model: [drivingLicenseInstance: drivingLicenseInstance])
                return
            }
        }

        drivingLicenseInstance.properties = params

        if (!drivingLicenseInstance.save(flush: true)) {
            render(view: "edit", model: [drivingLicenseInstance: drivingLicenseInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'drivingLicense.label', default: 'DrivingLicense'), drivingLicenseInstance.id])
        redirect(action: "show", id: drivingLicenseInstance.id)
    }

    def delete(Long id) {
        def drivingLicenseInstance = DrivingLicense.get(id)
        if (!drivingLicenseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'drivingLicense.label', default: 'DrivingLicense'), id])
            redirect(action: "list")
            return
        }

        try {
            drivingLicenseInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'drivingLicense.label', default: 'DrivingLicense'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'drivingLicense.label', default: 'DrivingLicense'), id])
            redirect(action: "show", id: id)
        }
    }
}
