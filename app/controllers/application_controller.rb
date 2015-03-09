class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit({ roles: [] }, :name, :mobile, :phone, :fax, :address, :email, 
        :password, :password_confirmation, :remember_me, :avatar, :avatar_cache)
    end

    devise_parameter_sanitizer.for(:sign_in) do |u|
      u.permit(:login, :name, :email, :password, :remember_me)
    end

    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:name, :email, :password, :password_confirmation,
        :current_password, :avatar, :avatar_cache)
    end
  end
end
