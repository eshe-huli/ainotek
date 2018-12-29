class PostsController < ApplicationController
    

    def index
    	cookies[:username] = {
    		value: "Jhon",
    		expires: 1.month.from_now
    	}

        @posts = Post.all
        @categories = Category.all

        respond_to do |format|
        	format.html
        	format.json { render json: @posts }
        end
    end

    def show
    	set_post
    end

    def edit
    	set_post
    end 

    def update
    	set_post
    	@post.update(post_params)
    	flash[:success] = 
    	redirect_to post_path, success: "Successfully edited!"
    end


    def new
    	@post = Post.new
    end

    def create
    	@post = Post.create(post_params)
    	redirect_to post_path(@post.id), success: "Successfully created!"
    end

    def destroy
    	set_post
    	@post.destroy
    	redirect_to posts_path, success: "Successfully deleted!"
    end

    private

    def post_params
    	params.require(:post).permit(:title, :content)    	
    end

    def set_post
    	@post = Post.find(params[:id])
    end

end
