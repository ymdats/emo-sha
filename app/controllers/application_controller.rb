class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  # def after_sign_in_path_for(resource)
  #   request.referer
  # end
  # def after_sign_out_path_for(resource)
  #   redirect_to root_path
  #   # request.referer
  # end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:age])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:age])
  end
end
