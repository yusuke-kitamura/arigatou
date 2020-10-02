class PostsController < ApplicationController
	def create
		@post = Post.new(post_params)
	end

	def index
		@posts = Post.all
	end

	def destroy
		@post = Post.find(params[:id])
	end

	private
	def post_params
		params.require(:post).permit(:content, :user_id)
	end
end
