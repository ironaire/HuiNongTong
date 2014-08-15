package com.xpi.settle.sys

class User extends SecUser {

    String email
    String address
    String phone
    Date dateCreated
    Date dateUpdated
    String name
    String idCard
    String im
    String memo
    String reserve1
    String reserve2
    String reserve3
    Organization organization

    static constraints = {
        email blank: false, size: 1..32, unique: true, email: true
        address nullable: true
        phone nullable: true
        dateCreated nullable: true
        dateUpdated nullable: true
        organization nullable: false
        name nullable: true
        idCard nullable: true, size: 1..32
        im nullable: true
        memo nullable: true
        reserve1 nullable: true, size: 1..256
        reserve2 nullable: true, size: 1..256
        reserve3 nullable: true, size: 1..256
    }

    String toString() {
        return username
    }
}
