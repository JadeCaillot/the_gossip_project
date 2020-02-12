class CommentsController < ApplicationController
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
        @comment = Comment.new(user:User.last, content: params[:content])
        puts params
        if @comment.save
            redirect_to gossip_path
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
            redirect_to gossip_path
        else
            render :edit
        end 
    end

    def destroy
        @comment=Comment.find(params[:id])
        @comment.destroy
        redirect_to gossips_path
    end 

    private
    def comment_params
        comment_params=params.require(:comment).permit(:content)
    end
    
end 