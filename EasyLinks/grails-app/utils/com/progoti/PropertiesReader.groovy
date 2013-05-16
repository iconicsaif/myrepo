package com.progoti

public class PropertiesReader {
    private static Properties ppt;
    public final static String CONFIG_FILE_NAME = "surecash-config.properties";

    static getProperty(def name, def defaultV) {
        if (ppt == null) {
            ppt = new Properties();
            try {
                URL url = PropertiesReader.class.getResource("PropertiesReader.class");
                String thisPath = url.getPath();
                thisPath = thisPath.substring(0, thisPath.lastIndexOf("classes")) + CONFIG_FILE_NAME;
                url = new URL("file://" + thisPath);
                InputStream stream = url.openStream();
                ppt.load(stream);
                stream.close();
            } catch (Exception k) {
                k.printStackTrace();
            }
        }
        def result = ppt.getProperty(name, defaultV.toString());
        return result != null ? result : defaultV;
    }
}