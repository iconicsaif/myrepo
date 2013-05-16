package com.progoti.service.security

import com.progoti.coresecurity.AuthenticationProcessingFilter
import com.progoti.coresecurity.AuthenticationToken
import com.progoti.security.Authority
import com.progoti.security.Feature
import com.progoti.security.User

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat
import com.progoti.school.util.EncryptionUtils;

/**
 * This service is intended to handle all security related task , i.e. authentication,
 */
class SecurityService {

    def grailsApplication;

    def serviceMethod() {

    }
    private final static EncryptionUtils ENCRYPTION_UTIL=new EncryptionUtils("progoti");

    public AuthenticationToken doAuthentication(params){

        AuthenticationProcessingFilter authFilter = new AuthenticationProcessingFilter();
        AuthenticationToken authToken = authFilter.attemptAuthentication(params);

        return authToken;
    }

    public boolean checkAuthorization(session,module,operation){
        boolean isAuthorized = false;
        User user=session.user;

        if("Super Admin".equalsIgnoreCase(user?.profile.title)){
            isAuthorized = true;
        }
        Map<String,Collection<Set<Feature>>> featureCollectionMap = session?.grantedAuthority;
        Collection<Set<Feature>> featureCollection = featureCollectionMap?.get("features");

        featureCollection?.each{
            features->
                features.each{
                    feature->

                        if(feature?.module?.equalsIgnoreCase(module) && feature?.operation?.equalsIgnoreCase(operation)){
                            isAuthorized = true;
                        }
                }
        }

        return isAuthorized;
    }

    public List<String> loadModules(session){
        Map<String,List<Feature>> featureListMap = session?.grantedAuthority;
        List<Feature> featureList = featureListMap.get("features");
        //Map<String,String> moduleMap = new HashMap<String,String>();
        List<Object> moduleList = new ArrayList<String>();
        featureList?.each{
            feature->
                moduleList.add(feature?.module);

        }

        return moduleList;
    }

    /**
     * code for feature service
     *
     */

    boolean saveFeature(params){
        System.out.print("enter ");
        def featureInstance = new Feature(params);
        System.out.print("enter ");
        if(!featureInstance){
            return false;
        }


        if(!featureInstance.save(flush: true)){

            return false;
        }else{
            return true;
        }

    }

    boolean editFeature(id, params){
        // def encryptionUtils = new EncryptionUtils("jabait");

        def featureInstance = Feature.get(id);
        if(!featureInstance){
            return false;
        } else {
            featureInstance.properties = params;
            if(!featureInstance.save(flush: true)){
                return false;
            }
            else{
                return true;
            }

        }
    }
    List loadControllers(){
        List<String> controllerList = new ArrayList<String>();
        return controllerList;
    }


    List loadFeature(featureInstance){
        return Feature.list(featureInstance);
    }

    def deleteFeature(params){
        Feature feature = Feature.get(params.id);
        if(!feature){
            return "Feature delete failed";
        }

        try{
            // deleteFeatureRelatedData(id);
            def temporaryAuthority = [];

            feature.authorities.each {
                temporaryAuthority << it;
            }

            temporaryAuthority.each { authority ->

                feature.removeFromAuthorities(authority);

            }
            feature.delete(flush: true);
            return "Feature deleted successfully";
        } catch (Exception ex){
            return "Feature delete failed";
        }
    }
    /* def deleteFeatureRelatedData(id){
        def featureRoles = FeatureRole.findAllWhere(feature: Feature.get(id));

        for(FeatureRole featureRole : featureRoles){
            featureRole.delete(flush: true);
        }
    }*/

    /**
     * services for authority or role
     */

    boolean saveAuthority(params){
        def authorityInstance = new Authority(params);
        if(!authorityInstance){
            return false;
        }
        if(!authorityInstance.save(flush: true)){

            return  false
        }
        else{
            return true;
        }
    }

    boolean editAuthority(id){
        // def encryptionUtils = new EncryptionUtils("jabait");
        def authorityInstance = Authority.get(id);
        if(!authorityInstance){
            return false;
        } else {
            authorityInstance.save(flush: true);
            return true;
        }
    }

    List loadAuthorities(authorityList){
        return Authority.list(authorityList);
    }

    boolean updateAuthority(authorityId, params){

        def authorityInstance = Authority.get(authorityId);
        authorityInstance.roleTitle = params.roleTitle;
        authorityInstance.description = params.description;
        if(!authorityInstance.save(flush: true)){
            return false;
        }else{
            return true;
        }


    }

    def deleteAuthority(params){

        Authority authority = Authority.get(params.id);

        if(!authority){
            return "Authority delete failed";
        }

        try{

            //delete associated user
            def temporaryUsers = [];

            authority.users.each {
                temporaryUsers << it ;
            }

            temporaryUsers.each { user->
                user.removeFromAuthorities(authority);
            }


            //delete associated features
            def temporaryFeatures = [];
            authority.features.each {
                temporaryFeatures << it
            }
            temporaryFeatures.each { feature ->

                feature.removeFromAuthorities(authority);

            }

            //delete associated groups
            def temporaryGroups = [];
            authority.userGroups.each {
                temporaryGroups << it;


            }

            temporaryGroups.each { userGroup ->
                userGroup.removeFromAuthorities(authority);
            }

            authority.delete(flush: true);
            return "Authority deleted successfully";
        } catch (Exception ex){
            return "Authority delete failed";
        }
    }

    boolean isAllowedForAcl(session){

        def secured = false;
        User user = session?.user;
        user.authorities.features.each {
            feature ->
                feature.each {
                    feat ->
                        if(feat.module.equalsIgnoreCase("security")){
                            secured = true;
                        }
                }
        }
        return secured;
    }
    boolean isAllowedForUser(session){
        def secured = false;
        User user = session?.user;
        user.authorities.features.operation.each {
            operation->

                operation.each {
                    data->
                        if (data == "userGroupList"){
                            secured = true;
                        }

                }
        }
        return secured;
    }

    public boolean isAllowedForAdvancePayApprove(session){
        def secured = false;
        User user = session?.user;
        user.authorities.features.operation.each {
            operation->

                operation.each {
                    data->
                        if (data == "advanceApprove" ){
                            secured = true;
                        }

                }
        }
        return secured;
    }

    public boolean isAllowedForLeaveApprove(session){
        def secured = false;
        User user = session?.user;
        user.authorities.features.operation.each {
            operation->

                operation.each {
                    data->
                        if (data == "leaveApprove" ){
                            secured = true;
                        }

                }
        }
        return secured;
    }

    public boolean isAllowedForUserGroup(session){
        def secured = false;
        def userInstance =  User.get(session.user.id)
        userInstance.authorities.features.operation.each {
            operation->

                operation.each {
                    data->
                        if (data == "userGroupList"){
                            secured = true;
                        }

                }
        }
        return secured;
    }

    boolean isAllowedForConfiguration(session){
        return true;
    }

    boolean isAllowedForEmployee(session){


        return true;

    }

    boolean isAllowedForClient(session){


        return true;

    }

    boolean isAllowedForProject(session){


        return true;

    }
    boolean isAllowedForCalender(session){

        return true;

    }

    boolean isAllowedForLeaveManagement(session){

        return true;

    }
    //new added
    boolean isAllowedForAuthority(session){
        def securedForAuthority = false;
        def userInstance =  User.get(session.user.id)
        userInstance.authorities.features.operation.each {
            operation->

                operation.each {
                    data->
                        if (data == "authorityList"){
                            securedForAuthority = true;
                        }

                }
        }
        return securedForAuthority;
    }
    boolean isAllowedForFeature(session){
        def securedForFeature = false;
        def userInstance =  User.get(session.user.id)
        userInstance.authorities.features.operation.each {
            operation->

                operation.each {
                    data->
                        if (data == "featureList"){
                            securedForFeature = true;
                        }

                }
        }
        return securedForFeature;
    }
    /**
     * convert the input string(2007-09-23 or 2007-09-23 00:00:00) into a timestamp(2007-09-23 00:00:00.0) object
     * @param inputString
     * @return
     */
    public Timestamp getTimeStamp(String inputString){
        if(inputString.length() != 19){
            inputString = inputString + " " + "00:00:00";
        }
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date;
        try {
            date = dateFormat.parse(inputString);
            long time = date.getTime();

            return new Timestamp(time);
        } catch (ParseException e) {
            //  Auto-generated catch block
            e.printStackTrace();
            return null;
        }
    }

    public String encryptPassword(String password){
        return ENCRYPTION_UTIL.encrypt(password);
    }
    public String decryptPassword(String password){
        return ENCRYPTION_UTIL.decrypt(password);
    }

}
