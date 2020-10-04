class UsersController < ApplicationController
	def show
		@user = current_user
	end

	def edit
		@user = current_user
	end

	def update
		@user = current_user
		@user.update
		redirect_to edit_user_path, notice: "succesfully updated"
	end

	def destroy
		@user = current_user
		@user.destroy
		redirect_to root_path, notice: "succesfully deleted"
	end

	private
	def user_params
		params.require(:user).permit(:name, :user_image_id, :email)
	end
end
