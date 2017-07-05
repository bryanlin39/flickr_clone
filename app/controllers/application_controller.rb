class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

  def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :is_female, :date_of_birth, :avatar) }
  end
end
