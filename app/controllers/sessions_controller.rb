class SessionsController < ApplicationController
  def new
    @user = User.find_by(email: params[:email])
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      flash[:success] = 'Bravo, Bienvenue !'
      log_in user  
      redirect_to root_path
    else
      flash[:danger] = 'Email ou mot de passe incorrect. Merci de réessayer'
      render 'new'
    end
  end

  def destroy
    log_out(current_user)
    redirect_to root_path 
  end
end
