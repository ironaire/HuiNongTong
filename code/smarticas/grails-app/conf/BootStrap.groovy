class BootStrap {

    def init = { servletContext ->

        environments {
            def adminRole =
                com.xpi.settle.sys.Role.findByAuthority('ROLE_ADMIN') ?:
                new
                com.xpi.settle.sys.Role(authority: 'ROLE_ADMIN').
                    save(flush: true) 
            def userRole =
                com.xpi.settle.sys.Role.findByAuthority('ROLE_USER') ?:
                new
                com.xpi.settle.sys.Role(authority: 'ROLE_USER').
                    save(flush: true) 
            development {
                def area = new com.xpi.settle.sys.Area(code: '1', name: '1').
                    save(flush: true)
                def org = new com.xpi.settle.sys.Organization(code: '1', name: '1',
                        area: area).save(flush: true) 
                def admin = new com.xpi.settle.sys.User(username: 'admin',
                    password: 'admin', email: 'admin@me.com', 
                    organization: org).save(flush: true) 
                com.xpi.settle.sys.SecUserSecRole.create admin, adminRole
                def user = new com.xpi.settle.sys.User(username: 'user',
                    password: 'user', email: 'user@me.com', 
                    organization: org).save(flush: true) 
                com.xpi.settle.sys.SecUserSecRole.create user, userRole
            }
        }
    }
    def destroy = {
    }
}
