package com.oldwinner.Identity

class UserProfile {

    static belongsTo = User

    String fullName
    String bio
    String telephone
    String address
    String officeEmail
    String orgPosition
    String skin
    byte[] photo

    static constraints = {
        fullName(nullable: true)
        bio(nullable: true, maxSize: 1000)
        telephone(nullable: true)
        address(nullable: true)
        officeEmail(email: true, nullable: true)
        photo(nullable: true)
        orgPosition(nullable: true)
        skin(nullable: true, inList: ['blues', 'nighttime', ''])
    }
}
