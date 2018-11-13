class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, only: [:create, :new, :destroy, :edit ]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :address])

    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :address])
  end

  protected
    def after_sign_in_path_for(resource)
      request.env['omniauth.origin'] || stored_location_for(resource) || root_path
    end
    
end
