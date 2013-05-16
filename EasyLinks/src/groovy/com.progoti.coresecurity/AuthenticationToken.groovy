package com.progoti.coresecurity

import com.progoti.security.Authority
import com.progoti.security.Feature
import com.progoti.security.User
import com.progoti.security.UserGroup
/**
 * User: afzal
 * Date: 12/7/12
 * Time: 1:02 PM
 */

public class AuthenticationToken {

    public Set<Authority> credential = null; //role
    public User principal; //user
    public Map<String,Collection<Set<Feature>>> grantedAuthority = null; //set of features

    private String username;
    private String password;

    public AuthenticationToken(username,password){
        username=username;
        password=password;
        authenticationToken(username,password);
    }
    
    def authenticationToken(userCode,password){
        if (userCode==null){
            userCode=username;
            password=this.password;
        }
//        principal = User.findByUserNameAndPassword(userCode,new EncryptionUtils("wipage").encrypt(password));
        principal = User.findByUserNameAndPassword(userCode,password);
        if(principal != null){
            credential = principal.authorities;
            Set<Authority> groupCredentials=getGroupCredentials(principal);
            if (credential==null){
                credential=new HashSet<Authority>();
            }

            credential.addAll(groupCredentials);
            /*Set<Feature> features=new HashSet<Feature>();
            credential?.each {
                features.addAll(it.features);
            }*/
            grantedAuthority = new HashMap<String,Collection<Set<Feature>>>();
            grantedAuthority.put("features", credential.features);
        }
    }

    private Set<Authority> getGroupCredentials(User principal) {
        Set<Authority> groupCredential = new HashSet<Authority>();
        Set<UserGroup> userGroups = principal.userGroups;
        if (userGroups == null || userGroups.isEmpty()) {
            userGroups = new HashSet<UserGroup>();
            Set<UserGroup> allUserGroups = UserGroup.findAllByIsActive(true);
            allUserGroups?.each {
                if (it.users.contains(principal)) {
                    userGroups.add(it);
                }
            }
        }
        userGroups?.each {
            userGroup ->
                groupCredential.addAll(userGroup?.authorities);
        }
        return groupCredential;
    }
}
