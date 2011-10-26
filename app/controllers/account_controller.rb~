class AccountController < ApplicationController
  
  #def login
  #  @user = User.new
  #end
  
  def authenticate
    self.logged_in_user = User.authenticate(params[:user][:username], params[:user][:password])
    if is_logged_in?
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

