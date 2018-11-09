class UserMailer < ApplicationMailer
  default from: 'nour3_@hotmail.com'
 
  def welcome_email
    @user = params[:user]
    @url  = 'http://google.com'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end  
end
