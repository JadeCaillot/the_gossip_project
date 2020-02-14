class SessionsController < ApplicationController
  def new
    @user = User.find_by(email: params[:email])
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      flash.now[:success] = 'Bravo, Bienvenue !'
      session[:user_id] = user.id  
      redirect_to root_path
    else
      flash.now[:danger] = 'Email ou mot de passe incorrect. Merci de réessayer'
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    log_out(user)
    redirect_to root_path 
  end
end
