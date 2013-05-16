package com.progoti.school.util;

/**
 * Created with IntelliJ IDEA.
 * User: Khadija
 * Date: 1/5/13
 * Time: 1:32 PM
 * To change this template use File | Settings | File Templates.
 */
public class Utils {
    public String getFileExt(String filePath) {
        int iPos = filePath.lastIndexOf(".");
        if (iPos > 0) {
            return filePath.substring(iPos + 1);
        } else {
            return "";
        }
    }
}
