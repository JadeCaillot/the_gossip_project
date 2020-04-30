class CommentsController < ApplicationController
    before_action :authenticate_creator, only: [:edit, :update, :destroy]
    before_action :authenticate_user, except: [:index]

    def index
        @comments=Comment.all 
    end

    def show
        @comment=Comment.find(params[:id])
    end

    def new
        @comment=Comment.new
    end

    def create
        @comment = Comment.new(user:current_user, content: params[:content], gossip_id: params[:gossip])
        puts @comment.user
        if @comment.save
            redirect_to gossip_path(@comment.gossip.id)
        else
            puts "Ca n'a pas fonctionné désolé"
            render :new
        end
    end

    def edit
        @comment=Comment.find(params[:id])
    end 

    def update
        @comment=Comment.find(params[:id])
        if @comment.update(comment_params)
            redirect_to gossip_path(@comment.gossip.id)
        else
            render :edit
        end 
    end

    def destroy
        @comment=Comment.find(params[:id])
        @comment.destroy
        redirect_to gossip_path(@comment.gossip.id)
    end 

    private
    def comment_params
        comment_params=params.require(:comment).permit(:content)
    end

    def authenticate_creator
        unless current_user== Comment.find(params[:id]).user
            flash[:danger] = "Oops! Tu dois être l'auteur du commentaire pour faire cela"
            redirect_to root_path
        end 
    end 


    def authenticate_user
        unless current_user
            flash[:danger] = "Oops! Tu dois être connecté pour faire cela"
            redirect_to new_session_path
        end
    end
        
    
end 