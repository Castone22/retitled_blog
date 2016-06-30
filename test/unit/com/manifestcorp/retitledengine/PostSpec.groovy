package com.manifestcorp.retitledengine

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Post)
class PostSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "Test that a post has a title, an author, some content and a posted date"(){
        when: "A post is created and provided with a title, an author, some content on a given date"
            String title = 'Test Post'
            String author = 'Test'
            String content = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
            String date = new Date()
        then: "The post will show the things it is given"
            post.title == title
            post.author == author
            post.content == content
            post.date == date
    }

    void "Test that a post author is owner"() {
    }
}
