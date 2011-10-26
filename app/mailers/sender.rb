class Sender < ActionMailer::Base
  default :from => "admin@iv-sp.ru"

  def salt_account(user)
		@name = 'подтверждение аккаунта'
		@user = user
		@sender_name = 'Совместные покупки в Иваново'
		mail :to => user.email, :subject => @name #, :body => @message
		#render 'salt_account/email_friend'
  end
end
