class UserMailer < ApplicationMailer
  layout 'user_mailer'

  def welcome_email(user)
    @user = user
    @url = new_user_session_url
    mail(to: @user.email, subject: 'Welcome to Laomalaila')
  end
end
