package com.manifestcorp.retitledengine

class Post {

    String title
    String author
    String content
    Date dateCreated

    static constraints = {
        content(blank:false, maxSize:10000)
    }

    static mapping = {
        sort dateCreated: "desc"
    }

}
