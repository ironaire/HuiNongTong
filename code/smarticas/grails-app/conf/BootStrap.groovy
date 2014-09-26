class BootStrap {

    def init = { servletContext ->

        environments {
            def adminRole =
                com.xpi.settle.sys.Role.findByAuthority('ROLE_ADMIN') ?:
                new com.xpi.settle.sys.Role(authority: 'ROLE_ADMIN',
                    name: '管理员'
                ).
                   save(flush: true) 
            def userRole =
                com.xpi.settle.sys.Role.findByAuthority('ROLE_USER') ?:
                new com.xpi.settle.sys.Role(authority: 'ROLE_USER',
                    name: '普通用户'
                ).
                    save(flush: true) 
            def area = com.xpi.settle.sys.Area.findByName('Smarticas') ?:
                new com.xpi.settle.sys.Area(code: 'Smarticas', name: 'Smarticas').
                    save(flush: true)
            def org = com.xpi.settle.sys.Organization.findByName('Smarticas') ?:
                new com.xpi.settle.sys.Organization(code: 'Smarticas', 
                    name: 'Smarticas',
                    area: area).save(flush: true) 
            def smarticas = com.xpi.settle.sys.User.findByUsername('smarticas') ?: 
                new com.xpi.settle.sys.User(username: 'smarticas',
                password: 'smarticas', email: 'ironaire@gmail.com', 
                organization: org).save(flush: true) 
            com.xpi.settle.sys.SecUserSecRole.get(smarticas.id, adminRole.id) ?:
                com.xpi.settle.sys.SecUserSecRole.create(smarticas, adminRole)
            development {
            }
        }
    }
    def destroy = {
    }
}
