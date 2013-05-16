package com.progoti.security

class LoginTagLib {
    def loginControl = {
        if(session?.user){
            out<<'<div class="content_top">'
            out<<'<ul>'
            out<<"<li><span>Logged User:</span>${session.user.profile.firstName+''+session.user.profile.middleName+''+session.user.profile.lastName} ,</li>"
            out<<"<li><span>Last login:</span>${new Date()}</li>"
            out<<'</ul>'
            out<<"[${link(action:'logout', controller:'security'){'Logout'}}]"
            out<<'</div>'
        } else {
            out<<'<div class="content_top">'
            out<<'<ul>'
            out<<'<li></li>'
            out<<'<li></li>'
            out<<'</ul>'
            out << "[${link(action:'login', controller:'authentication'){'Login'}}]"
            out<<'</div>'
        }
    }
}
