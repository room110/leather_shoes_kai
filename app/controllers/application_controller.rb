class ApplicationController < ActionController::Base

before_action :configure_permitted_parameters, if: :devise_controller?
protect_from_forgery with: :exception

def after_sign_in_path_for(resource)
   if  user_signed_in?
      user_path(resource)
   else
     admins_brands_path
   end
end







  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
