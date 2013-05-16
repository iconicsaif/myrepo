package com.progoti.common

class HomeController {

    def index() {
        redirect(controller: "user");
    }
}
