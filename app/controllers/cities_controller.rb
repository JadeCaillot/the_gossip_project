class CitiesController < ApplicationController
  def index
    @cities=City.all
  end

  def show
    @city=City.find(params[:id])
    @gold=User.where(city_id: params[:id])
    @gossips=Gossip.where(user_id: @gold)
  end

  def new
    @city=City.new
  end

  def create
    @city=City.new(name: params[:name], zip_code: params[:zip_code])
    if @city.save
      redirect_to city_path(@city.id)
    else 
      render :new
    end 
  end 


end
