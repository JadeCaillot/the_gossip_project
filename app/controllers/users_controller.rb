class UsersController < ApplicationController
  def index 
    @users=User.all
  end 

  def show
    @user=User.find(params[:id]) 
  end

  def new
    @user=User.new
  end

  def create
    @user = User.new(first_name: params[:first_name], last_name: params[:last_name], age: params[:age], email: params[:email], description: params[:description], city:City.last, password: params[:password])
    if @user.save
      redirect_to root_path
      flash[:success] = "Bienvenue #{@user.first_name}, je te laisse faire le tour du propriétaire !"
    else
      puts "Ca n'a pas fonctionné désolé"
      render :new
    end
  end

  def edit
    @user=User.find(params[:id])
  end 

  def update
    @user=User.find(params[:id])
    if @user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end 
  end

  def destroy
    @user=User.find(params[:id])
    @user.destroy
    redirect_to root_path
  end 

  private
  def user_params
    user_params=params.require(:user).permit(:first_name, :last_name, :age, :email, :description, :city, :password)
  end 
  
end
