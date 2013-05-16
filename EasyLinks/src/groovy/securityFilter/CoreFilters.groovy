package securityFilter

class CoreFilters {

    def filters = {
        loginCheck(controller: '*', action: '*',controllerExclude: "authentication|jaxrs") {
            before = {
                if (!session.user && !actionName.equals('login')) {
                    redirect(controller: "authentication", action: 'login')
                    return false
                }
            }
        }

        forSecurity(controller:"*", action:"*", controllerExclude: "authentication|jaxrs") {
            before = {
                session.requestedController = params.controller
                session.requestedAction = params.action

                if(!session.user) {
                    redirect(controller:  "authentication", action: "login");
                    return false;
                }


            }
            after = { Map model ->
                try{
                    if(session?.user){
                        response.setHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
                        response.setHeader("Pragma", "no-cache");
                        response.setDateHeader("Expires", 0);
                    }
                } catch(Exception ex){

                }

            }
            afterView = { Exception e ->

            }
        }

        forRoot(controller:"authentication", action:"login") {
            before = {

               if(session.user) {
                    redirect(controller:  "home", action: "index");
                    return false;
                }
            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}
