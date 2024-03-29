dataSource {
    pooled = true
    driverClassName = "org.h2.Driver"
    username = "sa"
    password = ""
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "create-drop" // one of 'create', 'create-drop','update'
            url = "jdbc:h2:tcp://127.0.0.1/activiti"
        }
    }
    test {
        dataSource {
            dbCreate = "create-drop"
            url = "jdbc:h2:mem:activiti;DB_CLOSE_DELAY=1000"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:tcp://127.0.0.1/activiti"
        }
    }
}
