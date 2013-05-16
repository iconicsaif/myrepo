package securityFilter

class SecurityFilters {

    def securityService;
    def grailsApplication;
    def grailsAttributes;

    def filters = {
        saveFilter(controller: "*", action: "save*", actionExclude: "*Profile", controllerExclude: "authentication|jaxrs"){
            before = {
                if(!securityService.checkAuthorization(session,params.controller,params.action)){
                    redirect(controller: "security", action: "unauthorized");
                    return false;
                }
            }
        }

        createFilter(controller: "*", action: "create*", controllerExclude: "authentication|jaxrs"){
            before = {
                if(!securityService.checkAuthorization(session,params.controller,params.action)){
                    redirect(controller: "security", action: "unauthorized");
                    return false;
                }
            }
        }

        readFilter(controller: "*", action: "*list*", controllerExclude: "authentication|jaxrs"){
            before = {
                if(!securityService.checkAuthorization(session,params.controller,params.action)){
                    redirect(controller: "security", action: "unauthorized");
                    return false;
                }
            }
        }

        updateFilter(controller: "*", action: "update*", controllerExclude: "authentication|jaxrs"){
            before = {
                if(!securityService.checkAuthorization(session,params.controller,params.action)){
                    redirect(controller: "security", action: "unauthorized");
                    return false;
                }
            }
        }

        editFilter(controller: "*", action: "edit*", actionExclude:"*Profile", controllerExclude: "authentication|jaxrs"){
            before = {
               if(!securityService.checkAuthorization(session,params.controller,params.action)){
                    redirect(controller: "security", action: "unauthorized");
                    return false;
               }
            }
        }

        deleteFilter(controller: "*", action: "delete*", controllerExclude: "authentication|jaxrs"){
            before = {
                if(!securityService.checkAuthorization(session,params.controller,params.action)){
                    redirect(controller: "security", action: "unauthorized");
                    return false;
                }
            }
        }
    }
}
