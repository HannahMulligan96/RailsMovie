class UserMailer <  ActionMailer::Base
    default from: 'movieapprails@gmail.com'
    def welcome_email(user)
        @user = user
        @url  = 'http://localhost:3000/users/sign_up'
        mail(to: @user, subject: 'A new review has been added')
 end
end