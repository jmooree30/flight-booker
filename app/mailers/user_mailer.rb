class UserMailer < ApplicationMailer
  default from: 'jmooree30@gmail.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Thank you for flying with Flight booker!')
  end
end