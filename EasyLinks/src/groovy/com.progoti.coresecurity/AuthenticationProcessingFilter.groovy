package com.progoti.coresecurity

/**
 * User: afzal
 * Date: 12/07/12
 * Time: 9:22 AM
 */
class AuthenticationProcessingFilter {

    public AuthenticationToken attemptAuthentication(params){
        String username = obtainUsername(params);
        String password = obtainPassword(params);

        if(username == null){
            username = "";
        }

        if(password == null){
            password = "";
        }

        AuthenticationToken userAuthTokenObject = new AuthenticationToken(username,password);

        return userAuthTokenObject;
    }


    public String obtainUsername(params){
        return params.userName;
    }

    public String obtainPassword(params){
        return params.password;
    }


}
