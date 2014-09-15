package com.xpi.settle.sys

class Area {
    
    String code
    String name
    String spell
    Long level
    String reserve1
    String reserve2
    String reserve3
    Area parent

    static hasMany = [
        organizations: Organization,
        children: Area
    ]

    static constraints = {
        code blank: false, size: 1..32
        name blank: false, size: 1..256
        spell nullable: true, size: 1..256
        level nullable: true, min: 0L
        reserve1 nullable: true, size: 1..256
        reserve2 nullable: true, size: 1..256
        reserve3 nullable: true, size: 1..256
        parent nullable: true
        children nullable: true
    }

    String toString() {
        return name
    }
}
