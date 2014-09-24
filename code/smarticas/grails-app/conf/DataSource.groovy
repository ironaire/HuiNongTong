
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
//    cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
    singleSession = true // configure OSIV singleSession mode
}

// environment specific settings
environments {
    development {
        dataSource {
            /*dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:h2:mem:devDb;MVCC=TRUE;LOCK_TIMEOUT=10000;DB_CLOSE_ON_EXIT=FALSE"
            pooled = true
            jmxExport = true
            driverClassName = "org.h2.Driver"
            username = "sa"
            password = ""
            */

            dbCreate = "update"
            url = "jdbc:mysql://localhost:3306/smarticas_test"
            driverClassName = "com.mysql.jdbc.Driver"
            dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
            username = "admin"
            password = "admin"
        }
    }
    test {
        dataSource {
            /*
            dbCreate = "update"
            url = "jdbc:mysql://localhost:3306/smarticas_test"
            driverClassName = "com.mysql.jdbc.Driver"
            dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
            username = "admin"
            password = "admin"
            */

            dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:h2:mem:devDb;MVCC=TRUE;LOCK_TIMEOUT=10000;DB_CLOSE_ON_EXIT=FALSE"
            pooled = true
            jmxExport = true
            driverClassName = "org.h2.Driver"
            username = "sa"
            password = ""

            pooled = true
            properties {
                // Documentation for Tomcat JDBC Pool
                // http://tomcat.apache.org/tomcat-7.0-doc/jdbc-pool.html#Common_Attributes
                // https://tomcat.apache.org/tomcat-7.0-doc/api/org/apache/tomcat/jdbc/pool/PoolConfiguration.html
                maxActive = 50
                maxIdle = 25
                minIdle = 5
                initialSize=5
                timeBetweenEvictionRunsMillis = 5000
                minEvictableIdleTimeMillis = 60000
                numTestsPerEvictionRun=3
                testOnBorrow = true
                testWhileIdle = true
                testOnReturn = true
                validationQuery='SELECT 1'
            }

        }
    }
    production {
        dataSource {
            dbCreate = "update"
            jndiName = "java:comp/env/dataSource/Smarticas"
        }
    }
}
