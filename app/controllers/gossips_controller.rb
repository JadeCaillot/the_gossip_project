class GossipsController < ApplicationController
  
  def index
    @gossips=Gossip.all 
  end

  def show
    @gossip=Gossip.find(params[:id])
    @comments=Comment.where(gossip_id: params[:id])
  end

  def new
    @gossip=Gossip.new
  end

  def create
    @gossip = Gossip.new(user:User.last, title: params[:title], content: params[:content])
    if @gossip.save
      redirect_to gossip_path(@gossip.id)
    else
      puts "Ca n'a pas fonctionné désolé"
      render :new
    end
  end

  def edit
    @gossip=Gossip.find(params[:id])
  end 

  def update
    @gossip=Gossip.find(params[:id])
    if @gossip.update(gossip_params)
      redirect_to gossip_path
    else
      render :edit
    end 
  end

  def destroy
    @gossip=Gossip.find(params[:id])
    @gossip.destroy
    redirect_to gossips_path
  end 

  private
  def gossip_params
    gossip_params=params.require(:gossip).permit(:title, :content)
  end 

  

end
