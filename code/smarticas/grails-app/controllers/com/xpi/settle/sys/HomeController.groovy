package com.xpi.settle.sys

import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

import org.apache.commons.logging.LogFactory

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN', 'ROLE_USER'])
class HomeController {

    def springSecurityService

    private static final log = LogFactory.getLog(this)

    def index() {

    }

    def showProfile() {
        def principal = springSecurityService.principal
        def user = User.get(principal.id)
        [userInstance: user]
    }

    /**
     * Return user's information for updating.
     */
    def changeProfile() {
        def principal = springSecurityService.principal
        def user = User.get(principal.id)
        def profileCmd = new ProfileCommand()
        profileCmd.init(user)
        [cmdInstance: profileCmd]
    }

    /**
     * To change passsword.
     */
    def changePassword() {
        def principal = springSecurityService.principal
        def user = User.get(principal.id)
        def passwordCmd = new PasswordCommand()
        passwordCmd.init(user)
        [cmdInstance: passwordCmd]
    }

    def updatePassword(PasswordCommand passwordCmd) {
        if (passwordCmd == null) {
            flash.message = message(code: 'default.not.found.message',
                args: [message(code: 'user.label'), params.idValue]
            )
            redirect controller: 'home', action: 'index'
            return
        }
        def user = User.get(passwordCmd.idValue)
        if (user == null) {
            flash.message = message(code: 'default.not.found.message',
                args: [message(code: 'user.label'), passwordCmd.idValue]
            )
            redirect controller: 'home', action: 'index'
            return
        }
         if (!springSecurityService.passwordEncoder.
                isPasswordValid(user.password, passwordCmd.currentPassword, null)) {
            flash.message = message(code: 'user.password.not.match')
            render(view: 'changePassword', model: [cmdInstance: passwordCmd])
            return
        }
        if(passwordCmd.versionValue < user.version) {
            flash.message = message(code: 'default.optimistic.locking.failure',
                args: [message(code: 'user.label')]
            )
            redirect controller: 'home', action: 'index'
            return
        }

        user = passwordCmd.updatePassword()
        if(!user.validate()) {
            render view: 'changePassword', model: [cmdInstance: passwordCmd]
            return
        }
        if(!user.save(flush: true)) {
            render view: 'changePassword', model: [cmdInstance: passwordCmd]
            return
        }
        flash.message = message(code: 'default.updated.message',
            args: [message(code: 'user.label'), user])
        redirect action: 'index'
    }

    def updateEmail(EmailCommand emailCmd) {
        if (emailCmd == null) {
            flash.message = message(code: 'default.not.found.message',
                args: [message(code: 'user.label'), params.idValue]
            )
            redirect controller: 'home', action: 'index'
            return
        }
        def user = User.get(emailCmd.idValue)
        if (user == null) {
            flash.message = message(code: 'default.not.found.message',
                args: [message(code: 'user.label'), emailCmd.idValue]
            )
            redirect controller: 'home', action: 'index'
            return
        }
         if (!springSecurityService.passwordEncoder.
                isPasswordValid(user.password, emailCmd.password, null)) {
            flash.message = message(code: 'user.password.not.match')
            render(view: 'changeEmail', model: [cmdInstance: emailCmd])
            return
        }
        if(emailCmd.versionValue < user.version) {
            flash.message = message(code: 'default.optimistic.locking.failure',
                args: [message(code: 'user.label')]
            )
            redirect controller: 'home', action: 'index'
            return
        }

        user = emailCmd.updateEmail()
        if(!user.validate()) {
            render view: 'changeEmail', model: [cmdInstance: emailCmd]
            return
        }
        if(!user.save(flush: true)) {
            render view: 'changeEmail', model: [cmdInstance: emailCmd]
            return
        }
        flash.message = message(code: 'default.updated.message',
            args: [message(code: 'user.label'), user])
        redirect action: 'index'
    }

    /**
     * To change passsword.
     */
    def changeEmail() {
        def principal = springSecurityService.principal
        def user = User.get(principal.id)
        def EmailCommand emailCmd = new EmailCommand()
        emailCmd.init(user)
        [cmdInstance: emailCmd]
    }

    def updateProfile(ProfileCommand profileCmd) {
        if (profileCmd == null) {
            flash.message = message(code: 'default.not.found.message',
                args: [message(code: 'user.label'), params.idValue]
            )
            redirect controller: 'home', action: 'index'
            return
        }
        def user = User.get(profileCmd.idValue)
        if (user == null) {
            flash.message = message(code: 'default.not.found.message',
                args: [message(code: 'user.label'), profileCmd.idValue]
            )
            redirect controller: 'home', action: 'index'
            return
        }
        if(profileCmd.versionValue < user.version) {
            flash.message = message(code: 'default.optimistic.locking.failure',
                args: [message(code: 'user.label')]
            )
            redirect controller: 'home', action: 'index'
            return
        }

        user = profileCmd.updateProfile()
        if(!user.validate()) {
            render view: 'changeProfile', model: [cmdInstance: profileCmd]
            return
        }
        if(!user.save(flush: true)) {
            render view: 'changeProfile', model: [cmdInstance: profileCmd]
            return
        }
        flash.message = message(code: 'default.updated.message',
            args: [message(code: 'user.label'), user])
        redirect action: 'showProfile', model: [userInstance: user]
    }

}

class ProfileCommand {
    
    String idValue
    String versionValue
    String address
    String phone
    String name
    String idCard
    String im
    String memo
    String reserve1
    String reserve2
    String reserve3

    static constraints = {
        importFrom User
    }

    void init(User user) {
        idValue = user.id
        versionValue = user.version
        this.address = user.address
        this.phone = user.phone
        this.name = user.name
        this.idCard = user.idCard
        this.im = user.im
        this.memo = user.memo
        this.reserve1 = user.reserve1
        this.reserve2 = user.reserve2
        this.reserve3 = user.reserve3
    }

    User updateProfile() {
        User user = User.get(idValue)
        user.address = address
        user.phone = phone
        user.name = name
        user.idCard = idCard
        user.im = im
        user.memo = memo
        user.reserve1 = reserve1
        user.reserve2 = reserve2
        user.reserve3 = reserve3
        user
    }

}

class PasswordCommand {
    
    String idValue
    String versionValue
    String currentPassword
    String password
    String confirmPassword

    static constraints = {
        currentPassword blank: false
        password blank: false
        confirmPassword blank: false, validator: {val, obj, errors ->
            if(val != obj.password) {
                errors.reject('user.confirmPassword.not.match', null, null)
            }
        }
    }

    void init(User user) {
        idValue = user.id
        versionValue = user.version
    }

    User updatePassword() {
        User user = User.get(idValue)
        user.password = password
        user
    }
}

class EmailCommand {

    String idValue
    String versionValue
    String password
    String email

    static constraints = {
        email email: true, blank: false
    }

    void init(User user) {
        idValue = user.id
        versionValue = user.version
    }

    User updateEmail() {
        User user = User.get(idValue)
        user.email = email
        user
    }
}

