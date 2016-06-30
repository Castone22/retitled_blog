package com.manifestcorp.retitledengine


class Post {

    String title
    String content
    Date dateCreated
    Date lastUpdated

    static hasMany = {
        [comments : Comment]
    }

    static constraints = {
        content(blank:false, maxSize:10000)
        user(nullable: true)
    }

    static belongsTo = [user : User]



    static mapping = {
        sort dateCreated: "desc"
    }

}
