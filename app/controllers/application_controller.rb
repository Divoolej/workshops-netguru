class ApplicationController < ActionController::Base
  before_action :configure_devise_parameters, if: :devise_controller?
  
  
  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

  protect_from_forgery with: :exception
  
  protected
    
    def configure_devise_parameters
      devise_parameter_sanitizer.for(:sign_up) { |user| user.permit(:firstname, :lastname, :email, :password, :password_confirmation) }
      devise_parameter_sanitizer.for(:account_update) { |user| user.permit(:firstname, :lastname, :email, :password, :password_confirmation, :current_password) }
      devise_parameter_sanitizer.for(:sign_in) { |user| user.permit(:email, :password) }
    end
end
