class PotinController < ApplicationController
  def show_potin
    @gossip=Gossip.find(params[:id])
  end
end
