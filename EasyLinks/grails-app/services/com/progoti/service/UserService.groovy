package com.progoti.service

import com.progoti.security.User
import com.progoti.security.UserProfile
import com.progoti.security.Address
import com.progoti.security.Identification
import javax.servlet.http.HttpSession


class UserService {
    def securityService;

    def serviceMethod() {

    }

    def saveUser(def params){
        User user=new User(params);
        user.password= securityService.encryptPassword(user.password);
        return user.save(flush: true);
    }

    def saveFullUser(User userInstance){
        userInstance.password = securityService.encryptPassword(userInstance.password);
        Address address = userInstance.profile.address;
        address.save();
        userInstance.profile.address = address;
        return userInstance?.save(flush: true);
    }

    def updateUser(def params){
        User user=new User(params);
        user.password= securityService.encryptPassword(user.password);
        return user.merge(flush: true);
    }

    def updateFullUser(User userInstance){
        userInstance.password= securityService.encryptPassword(userInstance.password);
        Address address = userInstance.profile.address;
        address.save();
        userInstance.profile.address = address;
        return userInstance?.merge(flush: true);
    }

    private String prepareSearchQuery(def params) {
        String userName=params.userName;
        def status=params.status;
        String loginID=params.loginID;
        def formattedUserName = "%"+userName+"%"
        def formattedLoginId = "%"+loginID+"%"
        String query
        if ((loginID == null || loginID.length() == 0) && (userName != null && userName.length() > 0)) {
            query = "from User as user where user.profile.middleName like '$formattedUserName' or user.profile.firstName like '$formattedUserName' or user.profile.lastName like '$formattedUserName'"
        } else if ((userName == null || userName.length() == 0) && (loginID != null && loginID.length() > 0)) {
            query = "from User as user where user.userName like '$formattedLoginId'"
        } else if ((userName != null && userName.length() >= 0) && (loginID != null && loginID.length() > 0)) {
            query = "from User as user where user.profile.middleName like '$formattedUserName' or user.profile.firstName like '$formattedUserName' or user.profile.lastName like '$formattedUserName' or user.userName like '$formattedLoginId'"
        } else {
            query = "from User as user"
        }

        if (!"all".equalsIgnoreCase(status)) {
            status = params.boolean("status");
            if (query.contains("where")) {
                query += " and isActive=$status";

            } else {
                query += " where isActive=$status";
            }
        }
        return query;
    }

    public long getAllUserCount(def params){
        String query = prepareSearchQuery(params);
        List<User> userList = User.findAll(query);
        return userList.size();
    }

    public List<User> getAllUser(def params){
        String query = prepareSearchQuery(params);
        List<User> userList = User.findAll(query,[ max:params.max, offset: params.offset]);
        return userList;
    }

}
