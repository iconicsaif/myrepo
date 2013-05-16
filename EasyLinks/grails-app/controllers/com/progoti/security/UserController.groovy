package com.progoti.security

import org.springframework.dao.DataIntegrityViolationException

class UserController extends SearchableWorkaroundController{

    def userService
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        if (max==null){
            max=session.max;
        }
        params.max = Math.min(max ?: 25, 100)
        session.max=params.max;
        def offset = params.offset ? params.int("offset"): 0;
        params.offset=offset;
        updateSearchParameters(session,params);
        int total=userService.getAllUserCount(params);
        List<User> userList = userService.getAllUser(params);

        render(view: "surecash_list",model: [userInstanceList: userList, userInstanceTotal: total]);

    }

    private void updateSearchParameters(def session,def params) {
        if (params.status==null && session?.userSearch?.status) {
            params.status = session?.userSearch?.status;
        } else {
            params.status = "all";
        }

        if (params.userName==null && session?.userSearch?.userName) {
            params.userName = session?.userSearch?.userName;
        }

        if (params.loginID==null && session?.userSearch?.loginID) {
            params.loginID = session?.userSearch?.loginID;
        }
    }

    def search(Integer max) {

        if (max==null){
            max=session.max;
        }
        //params.max = Math.min(max ?: 25, 100)
        params.max = 1;
        session.max=params.max;
        updateSearchParameters(session,params);
        def offset = params.offset ? params.int("offset"): 0;
        params.offset=offset;
        int total=userService.getAllUserCount(params);

        List<User> userList = userService.getAllUser(params);
        session.userSearch=[userName:params.userName,loginID:params.loginID,status:params.status];
        //userList = User.findAll(" from User as user where user.profile.firstName like \'%"+userName+"%\' or user.profile.middleName like '%\"+userName+\"%' or user.profile.lastName like '%\"+userName+\"%' or user.userName like '%"+loginID+"%'",params);
        render(template: "surecash_inner_list",model: [userInstanceList: userList, userInstanceTotal: total,params: params]);
    }

    def create() {
        render(view: "surecash_create",model: [userInstance: new User(params), userProfileInstance: new UserProfile(params), addressInstance:new Address(params),
                identificationInstance: new Identification(params)]);
    }

    def save() {

        def userInstance = new User(params);
        userInstance.profile.imageUrl = session.getAttribute("imageUrl");
        session.removeAttribute("imageUrl");
        session.removeAttribute("imageName");
        if (params.password!=params.confirmPassword){
            flash.errorMessage="Password not matched";
            render(view: "create", model: [userInstance: userInstance, userProfileInstance: userInstance?.profile, addressInstance: userInstance?.profile?.address,
                    identificationInstance: userInstance?.profile?.identification])
        }
        if (!userService.saveFullUser(userInstance)) {
            render(view: "surecash_create", model: [userInstance: userInstance, userProfileInstance: userInstance?.profile, addressInstance: userInstance?.profile?.address,
                    identificationInstance: userInstance?.profile?.identification])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
        redirect(action: "show", id: userInstance.id)

    }

    def show(Long id) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        [userInstance: userInstance, userProfileInstance: userInstance?.profile, addressInstance: userInstance?.profile?.address,
                identificationInstance: userInstance?.profile?.identification]
    }

    def edit(Long id) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        [userInstance: userInstance, userProfileInstance: userInstance?.profile, addressInstance: userInstance?.profile?.address,
                identificationInstance: userInstance?.profile?.identification]
    }

    def update(Long id, Long version) {
        def userInstance = User.get(id)
        if (params.password!=params.confirmPassword){
            flash.errorMessage="Password not matched";
            render(view: "edit", model: [userInstance: userInstance, userProfileInstance: userInstance?.profile, addressInstance: userInstance?.profile?.address,
                    identificationInstance: userInstance?.profile?.identification])
        }
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (userInstance.version > version) {
                userInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'user.label', default: 'User')] as Object[],
                          "Another user has updated this User while you were editing")
                render(view: "edit", model: [userInstance: userInstance, userProfileInstance: userInstance?.profile, addressInstance: userInstance?.profile?.address,
                        identificationInstance: userInstance?.profile?.identification])
                return
            }
        }

        userInstance.properties = params
        userInstance.profile.imageUrl = session.getAttribute("imageUrl");
        session.removeAttribute("imageUrl");
        session.removeAttribute("imageName");

        if (!userService.updateFullUser(userInstance)) {
            render(view: "edit", model: [userInstance: userInstance, userProfileInstance: userInstance?.profile, addressInstance: userInstance?.profile?.address,
                    identificationInstance: userInstance?.profile?.identification])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
        redirect(action: "show", id: userInstance.id)
    }

    def delete(Long id) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        try {
            userInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "show", id: id)
        }
    }
}
