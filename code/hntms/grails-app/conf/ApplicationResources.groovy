modules = {

    jquery {
        resource url: 'js/jquery-2.1.0.min.js'
    }

    bootstrap {
        dependsOn 'jquery'

        resource url: 'css/bootstrap.min.css'
        resource url: 'js/bootstrap.min.js'
    }

    dataTables {
        dependsOn 'jquery'
        resource url: 'DataTables/css/jquery.dataTables.min.css'
        resource url: 'DataTables/js/jquery.dataTables.min.js'
    }

    tableTools {
        dependsOn 'dataTables'
        resource url: 'TableTools/css/dataTables.tableTools.min.css'
        resource url: 'TableTools/js/dataTables.tableTools.min.js'
    }

    jqueryui {
        dependsOn 'jquery'
        resource url: 'jqueryui/css/jquery-ui.min.css'
        resource url: 'jqueryui/css/jquery-ui.structure.min.css'
        resource url: 'jqueryui/css/jquery-ui.theme.min.css'
        resource url: 'jqueryui/js/jquery-ui.js'
    }

    custom {
        resource url: '/custom/css/styles.css'
        resource url: '/custom/js/application.js'
    }

    areaList {
        dependsOn 'dataTables'
        resource url:'area/list.js'
    }

    orgList {
        dependsOn 'dataTables'
        resource url:'organization/list.js'
    }

    userList {
        dependsOn 'dataTables'
        resource url:'user/list.js'
    }

    roleList {
        dependsOn 'dataTables'
        resource url:'role/list.js'
    }
}
