class GossipsController < ApplicationController
  def new
    @gossip=Gossip.create
  end

  def create
    puts "$"*30
    @gossip = Gossip.create('title' => params[:title],
    'user_id' => params[:user_id],
    'content' => params[:content])
    puts params
    puts "s"*30
  redirect_to root_path

  end
end
