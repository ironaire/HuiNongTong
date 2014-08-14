package com.xpi.settle.sys

class Area {
    
    String code
    String name
    String spell

    static hasMany = [
        users: User,
        organizations: Organization
    ]

    static constraints = {
        code blank: false, size: 1..32
        name blank: false, size: 1..256
        spell blank: false, size: 1..256
    }

    String toString() {
        return name
    }
}
