package com.xpi.settle.sys

class User extends SecUser {

    String email
    String address
    String phone
    Date dateCreated
    Date dateUpdated
    Area area
    Organization organization

    static constraints = {
        email blank: false, size: 1..32, unique: true, email: true
        address nullable: true
        phone nullable: true
        dateCreated nullable: true
        dateUpdated nullable: true
        area nullable: false
        organization nullable: false
    }

    String toString() {
        return username
    }
}
