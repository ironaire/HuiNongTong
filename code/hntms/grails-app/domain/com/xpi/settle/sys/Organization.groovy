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
    Long level
    String reserve1
    String reserve2
    String reserve3
    Area area
    Organization parent

    static hasMany = [
        users: User,
        children: Organization
    ]

    static constraints = {
        code blank: false, size: 1..32
        name blank: false, size: 1..32
        address nullable: true, size: 1..256
        leader nullable: true, size: 1..32
        contact nullable: true, size: 1..32
        memo nullable: true, size: 1..256
        bank nullable: true, size: 1..32
        dateCreated nullable: true
        dateUpdated nullable: true
        reserve1 nullable: true, size: 1..256
        reserve2 nullable: true, size: 1..256
        reserve3 nullable: true, size: 1..256
        level nullable: true, min: 0L
        parent: nullable: true
        children: nullable: true
    }

    String toString() {
        return name
    }
}
