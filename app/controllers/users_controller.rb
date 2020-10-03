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
	end
end
