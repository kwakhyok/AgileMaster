package com.oldwinner.Identity

class UserController {

    static scaffold = true

    def list = {
        def users = User.findAll()
        [users: users, userTotal: User.count()]
    }
}
