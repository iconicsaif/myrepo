package com.progoti.security

import com.progoti.coresecurity.AuthenticationToken
import grails.converters.JSON

class SecurityController {

    static allowedMethods = [save: "POST", update: "POST", saveUser: "POST", saveFeature: "POST", authenticateUser: "POST", test2: "POST", saveUserProfile: "POST"]


    def userService
    def securityService
    def grailsApplication

    def index() {
        authCheck();
        render(view: "/index")
    }

    def logout(){
        session.removeValue("user")
        session.invalidate();
        redirect(controller: "authentication", action: "login")
    }

    def loggedout(){
        render(view: "loggedout");
    }

    def authCheck(){
        if (!session.user){
            redirect(controller: "authentication", action: "login");
            return false;
        }
    }

    def unauthorized(){
        render(view: "/unauthorized");
    }


    def authenticateUser(){
        AuthenticationToken authToken = securityService.doAuthentication(params);
        def user = authToken.principal;

        if (user){
            session.user = user;
            if(!session.user){
                redirect(action: "login")
                return false;
            } else {
                session.credentials = authToken.credential;
                session.grantedAuthority = authToken.grantedAuthority;
                redirect(controller:"application", action: "index");
                return true;
            }

        } else {
            flash.message = "Bad Credentials!!!";
            render(view: "/auth/login");
        }
    }


    def jsonSessionValue(){
        def features = User.get(params.id).authorities.features
        render([grantedAuthorityJson: features] as JSON);
    }

    def jsonValueForUserDetails(){
        def authorities = User.get(params.id).authorities;
        def groups = User.get(params.id).userGroups;
        render([authorities: authorities, groups: groups] as JSON);
    }

    boolean isAllowedForAcl(session){
        return securityService.isAllowedForAcl(session);
    }

}
