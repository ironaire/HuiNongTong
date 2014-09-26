package com.xpi.settle.sys

class Role extends SecRole {

    String name
    static constraints = {
        name blank: false, size: 1..32
    }

    String toString() {
        return name
    }
}
