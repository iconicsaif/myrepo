package com.progoti.security

import com.progoti.coresecurity.AuthenticationToken

class AuthenticationController {

    def securityService;

    def index= { }

    def login={
        def targetUri = params.targetUri;
        try{
            if (params.targetUri != null){
                response.setHeader(params.targetUri, "")
            }
        }  catch (Exception ex){

        }
        render(view: "/han/auth/han_login",  model: [targetUri: targetUri]);

    }

    def authenticate={
        AuthenticationToken authToken = securityService.doAuthentication(params);
        def user = authToken.principal;


        if (user?.isActive){
            session.user = user;
            if(!session.user){
                redirect(action: "login")
                return false;
            } else {
                session.credentials = authToken.credential;
                session.grantedAuthority = authToken.grantedAuthority;

                session.modules = securityService.loadControllers();
                log.debug("grantedAuthority >>> " + session.grantedAuthority);
                if (session.requestedController != null && session.requestedAction != null && !"authenticate".equalsIgnoreCase(session.requestedAction)&& !"login".equalsIgnoreCase(session.requestedAction)){
                    redirect(controller:session.requestedController, action:session.requestedAction,params: params);
                }else{
                    redirect(controller: "user", action: "list");
                }

                return true;
            }

        } else {
            flash.message = "Bad Credentials!!!";
            redirect(action: "login");
        }
    }

    def authenticate2={
        AuthenticationToken authToken = securityService.doAuthentication(params);
        def user = authToken.principal;


        if (user?.isActive){
            session.user = user;
            if(!session.user){
                redirect(action: "login")
                return false;
            } else {
                session.credentials = authToken.credential;
                session.grantedAuthority = authToken.grantedAuthority;

                session.modules = securityService.loadControllers();
                log.debug("grantedAuthority >>> " + session.grantedAuthority);
                if (session.requestedController != null && session.requestedAction != null && !"authenticate".equalsIgnoreCase(session.requestedAction)&& !"login".equalsIgnoreCase(session.requestedAction)){
                    redirect(controller:session.requestedController, action:session.requestedAction,params: params);
                }else{
//                    redirect(controller: "user", action: "han_list");

                    render(view: "/user/han/han_list");
                }

                return true;
            }

        } else {
            flash.message = "Bad Credentials!!!";
            redirect(action: "login");
        }
    }
}
