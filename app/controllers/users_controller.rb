class UsersController < ApplicationController
  def show
    @user=User.find(params[:id]) #pour permettre au fichier html show_auteur de reconnaitre la variable
  end
end
