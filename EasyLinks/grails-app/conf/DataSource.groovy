import com.progoti.PropertiesReader

dataSource {
    pooled = true
    url = PropertiesReader.getProperty("dataSource.url","jdbc:mysql://localhost/earlylinks?useUnicode=true&characterEncoding=utf8")
    driverClassName = PropertiesReader.getProperty("dataSource.driverClassName", "com.mysql.jdbc.Driver");
    username = PropertiesReader.getProperty("dataSource.username","root");
    password = PropertiesReader.getProperty("dataSource.password","");
//    dialect = org.hibernate.dialect.MySQL5UTF8InnoDBDialect
    dialect = org.hibernate.dialect.MySQL5InnoDBDialect
}
hibernate {
    cache.use_second_level_cache = false
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update" //"create-drop"
            url = PropertiesReader.getProperty("dataSource.url","jdbc:mysql://localhost/earlylinks?useUnicode=true&characterEncoding=utf8")

            pooled = true
            properties {
                maxActive = -1
                minEvictableIdleTimeMillis=1800000
                timeBetweenEvictionRunsMillis=1800000
                numTestsPerEvictionRun=3
                testOnBorrow=true
                testWhileIdle=true
                testOnReturn=true
                validationQuery="SELECT 1"
            }
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = PropertiesReader.getProperty("dataSource.url","jdbc:mysql://localhost/earlylinks?useUnicode=true&characterEncoding=utf8")

            pooled = true
            properties {
                maxActive = -1
                minEvictableIdleTimeMillis=1800000
                timeBetweenEvictionRunsMillis=1800000
                numTestsPerEvictionRun=3
                testOnBorrow=true
                testWhileIdle=true
                testOnReturn=true
                validationQuery="SELECT 1"
            }
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = PropertiesReader.getProperty("dataSource.url","jdbc:mysql://localhost/earlylinks?useUnicode=true&characterEncoding=utf8")

            properties {
                maxActive = -1
                minEvictableIdleTimeMillis=1800000
                timeBetweenEvictionRunsMillis=1800000
                numTestsPerEvictionRun=3
                testOnBorrow=true
                testWhileIdle=true
                testOnReturn=true
                validationQuery="SELECT 1"
            }
        }

    }
}
