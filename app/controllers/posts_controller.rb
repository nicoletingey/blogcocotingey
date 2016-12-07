class PostsController < ApplicationController
	before_action :set_post, only: [:edit, :update, :show, :destroy]

	def index
		@posts = Post.all.order("updated_at DESC")
	end

	def new
		@post = Post.new
	end

	def create
    	@post = Post.new(post_params)

    	if @post.save
    		redirect_to @post
    	else
    		render 'new'
    	end
    end

	def edit
	end

	def update

		if @post.update(post_params)
			redirect_to @post
		else
			render 'new'
		end
	end

	def show
	end

	def destroy
		@post.destroy
		redirect_to posts_path
	end

  	private 
  	def post_params
  		params.require(:post).permit(:title, :date, :description, :image)
  	end

  	def set_post
  		@post = Post.find(params[:id])
  	end
end
