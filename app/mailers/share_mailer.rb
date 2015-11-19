class ShareMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def share_email(friend, friend_email)
    @friend = friend
    @friend_email = friend_email
    @url  = 'https://lyricks.herokuapp.com/'
    mail(to: @friend_email, subject: 'Check out my Lyrick!')
  end
end
