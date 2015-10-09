class PostsController < ApplicationController
	def index
		@posts = Post.all 
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])

		if @post.update_attributes(post_params)
			redirect_to posts_url
		else
			render 'edit'
		end
	end

	def destroy
		@post = Post.find(params[:id])
	    @post.destroy
	    redirect_to root
	end

	private

	def post_params
		params.require(:post).permit(:beer_name, :brewer, :city, :avatar)
	end
end
