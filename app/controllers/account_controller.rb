class AccountController < ApplicationController
  
  #def login
  #  @user = User.new
  #end
  
  def authenticate
    self.logged_in_user = User.authenticate(params[:user][:username], params[:user][:password])
    if is_logged_in?
      user = User.find(logged_in_user.id)
      user.last_login_at = DateTime.now
      user.save
      logged_in_user = user
      redirect_to :root
    else
      flash[:notice] = "Имя пользователя или пароль указаны неверно"
      redirect_to :action => 'login'
    end
  end
  
  def logout
    if request.post?
      reset_session
      flash[:notice] = "Вы вышли из своего профиля"
    end
    redirect_to :root
   end
   
end

