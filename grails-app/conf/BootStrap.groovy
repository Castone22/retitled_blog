import com.manifestcorp.retitledengine.*

class BootStrap {

    def init = { servletContext ->
        def adminRole = Role.findOrSaveWhere(authority: 'ROLE_ADMIN')
        def user = User.findOrSaveWhere(username: 'Test', password: 'password', email:'test@test.test')

        if(!user.authorities.contains(adminRole)){
            UserRole.create(user,adminRole,true)
        }
    }
    def destroy = {
    }
}
