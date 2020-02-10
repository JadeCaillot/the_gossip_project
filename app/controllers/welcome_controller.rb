class WelcomeController < ApplicationController
  def index_potins
    @gossips=Gossip.all #pour permettre au fichier show_potins de reconnaitre la variable gossip
  end
end
