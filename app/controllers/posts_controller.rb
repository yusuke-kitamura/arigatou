class PostsController < ApplicationController
	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to posts_path, notice: "successfuly posted"
		end
	end

	def index
		@user = cuurent_user
		@posts = Post.all
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to user_path, notice: "successfuly deleted"
	end

	private
	def post_params
		params.require(:post).permit(:content, :user_id)
	end
end
