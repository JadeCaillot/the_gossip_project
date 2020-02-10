class AuteurPotinController < ApplicationController
  def show_auteur
    @user=User.find(params[:id]) #pour permettre au fichier html show_auteur de reconnaitre la variable
  end
end
