package com.xpi.settle.sys

class Organization {

    String code
    String name
    String address
    String leader
    String contact
    String memo
    Date dateCreated
    Date dateUpdated
    String bank
    Area area

    static hasMany = [
        users: User
    ]

    static constraints = {
        code blank: false, size: 1..32
        name blank: false, size: 1..32
        address blank: false, size: 1..256
        leader blank: false, size: 1..32
        contact blank: false, size: 1..32
        memo blank: false, size: 1..256
        bank blank: false, size: 1..32
        area nullable: false
        dateCreated nullable: true
        dateUpdated nullable: true
    }

    String toString() {
        return name
    }
}
