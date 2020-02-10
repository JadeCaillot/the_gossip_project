class WelcomeController < ApplicationController
  def index_potins
    @gossips=Gossip.all
  end
end
