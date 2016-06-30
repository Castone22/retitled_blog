import com.manifestcorp.retitledengine.*
import grails.util.Environment

class BootStrap {

    def init = { servletContext ->
        def adminRole = Role.findOrSaveWhere(authority: 'ROLE_ADMIN')
        def user = User.findOrSaveWhere(username: 'Test', password: 'password', email:'test@test.test').save()


        if(!user.authorities.contains(adminRole)){
            UserRole.create(user,adminRole,true)
        }
        if (Environment.current == Environment.DEVELOPMENT) {
            def loremIpsum = '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                        laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in
                        voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                        non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'''

            def testAuthor = "Test"
            def helloPost = new Post(title: "Hello World", content: "Hello Grails!", user: user).save()
            def anotherPost = new Post(title: "Lorem Ipsum", content:loremIpsum, user: user).save()
            def numbersPost = new Post(title: "101", content: "10110011 10110101 11110000 11011101 10101111 2", user: user).save()
            def rngPost = new Post(title: "Testing Testing 1-2-3", content: "Is this thing on?!", user: user).save()
            def rngPost1 = new Post(title: "Testing Testing 1-2-3", content: "Is this thing on?!", user: user).save()
            def rngPost2 = new Post(title: "Testing Testing 1-2-3", content: "Is this thing on?!", user: user).save()
            def rngPost3 = new Post(title: "Testing Testing 1-2-3", content: "Is this thing on?!", user: user).save()
            def rngPost4 = new Post(title: "Testing Testing 1-2-3", content: "Is this thing on?!", user: user).save()
            def rngPost5 = new Post(title: "Testing Testing 1-2-3", content: "Is this thing on?!", user: user).save()
            def rngPost6 = new Post(title: "Testing Testing 1-2-3", content: "Is this thing on?!", user: user).save()
            def numbersPost2 = new Post(title: "101", content: "10110011 10110101 11110000 11011101 10101111 2", user: user).save()
            def anotherPost2 = new Post(title: "Lorem Ipsum", content:loremIpsum, user: user).save()


        }
    }

    def destroy = {
    }
}

