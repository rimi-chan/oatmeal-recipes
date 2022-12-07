class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters , if: :devise_controller?
  
  def after_sign_in_path_for(resource)
    user_path(current_user.id) 
  end
  
  before_action :set_host
  def set_host
    Rails.application.routes.default_url_options[:host] = request.host_with_port
  end

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
