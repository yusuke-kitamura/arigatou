class ApplicationController < ActionController::Base

	def after_sign_in_path_for(resource)
		posts_path
  	end

  	def after_sign_out_path_for(resource)
  		root_path
  	end

  	protected

  	def configure_permitted_parameters
	    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:email])
	    devise_parameter_sanitizer.permit(:sign_in,keys:[:name,:email])
	  	devise_parameter_sanitizer.permit(:account_update,keys:[:name,:email])
  	end
end
