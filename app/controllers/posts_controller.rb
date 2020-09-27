class PostsController < ApplicationController
	def create
	end

	def index
	end

	def destroy
	end

	private
	def post_params
		params.require(:post).permit(:content, :user_id)
	end
end
