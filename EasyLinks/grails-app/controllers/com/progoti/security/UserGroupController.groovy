package com.progoti.security

import org.springframework.dao.DataIntegrityViolationException

class UserGroupController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [userGroupInstanceList: UserGroup.list(params), userGroupInstanceTotal: UserGroup.count()]
    }

    def create() {
        [userGroupInstance: new UserGroup(params)]
    }

    def save() {
        def userGroupInstance = new UserGroup(params)
        if (!userGroupInstance.save(flush: true)) {
            render(view: "create", model: [userGroupInstance: userGroupInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'userGroup.label', default: 'UserGroup'), userGroupInstance.id])
        redirect(action: "show", id: userGroupInstance.id)
    }

    def show(Long id) {
        def userGroupInstance = UserGroup.get(id)
        if (!userGroupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'userGroup.label', default: 'UserGroup'), id])
            redirect(action: "list")
            return
        }

        [userGroupInstance: userGroupInstance]
    }

    def edit(Long id) {
        def userGroupInstance = UserGroup.get(id)
        if (!userGroupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'userGroup.label', default: 'UserGroup'), id])
            redirect(action: "list")
            return
        }

        [userGroupInstance: userGroupInstance]
    }

    def update(Long id, Long version) {
        def userGroupInstance = UserGroup.get(id)
        if (!userGroupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'userGroup.label', default: 'UserGroup'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (userGroupInstance.version > version) {
                userGroupInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'userGroup.label', default: 'UserGroup')] as Object[],
                          "Another user has updated this UserGroup while you were editing")
                render(view: "edit", model: [userGroupInstance: userGroupInstance])
                return
            }
        }

        userGroupInstance.properties = params

        if (!userGroupInstance.save(flush: true)) {
            render(view: "edit", model: [userGroupInstance: userGroupInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'userGroup.label', default: 'UserGroup'), userGroupInstance.id])
        redirect(action: "show", id: userGroupInstance.id)
    }

    def delete(Long id) {
        def userGroupInstance = UserGroup.get(id)
        if (!userGroupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'userGroup.label', default: 'UserGroup'), id])
            redirect(action: "list")
            return
        }

        try {
            userGroupInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'userGroup.label', default: 'UserGroup'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'userGroup.label', default: 'UserGroup'), id])
            redirect(action: "show", id: id)
        }
    }
}
