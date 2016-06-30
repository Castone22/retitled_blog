package com.manifestcorp.retitledengine

class Post {

    String title
    String author = user.getUsername()
    String content
    Date dateCreated

    static constraints = {
        content(blank:false, maxSize:10000)
    }

    static belongsTo = [user : User]

    static mapping = {
        sort dateCreated: "desc"
    }

}
