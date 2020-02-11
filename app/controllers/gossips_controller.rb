class GossipsController < ApplicationController
  def new
    @gossip=Gossip.new
  end

  def create
    puts "$"*30
    @gossip = Gossip.new(user:User.last, title: params[:title], content: params[:content])
    puts params
    puts "s"*30
    if @gossip.save
      redirect_to root_path
    else
      puts "Ca n'a pas fonctionné désolé"
      render :new
    end

  end
end
