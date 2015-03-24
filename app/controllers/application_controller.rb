class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :update_resource_params, if: :devise_controller?
  # before_filter :authenticate_user!
  def after_sign_in_path_for(user)
    '/dashboard'
  end
  # def after_sign_out_path_for(user)
  #   '/'
  # end
  protected
  # def sign_up_params
  #   params.require(:user).permit(:email, :first_name, :password, :password_confirmation, :other, :etc)
  # end
  def update_resource_params
    # Only add some parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:first_name, :last_name, :email, :organization_id, :invitation_token, :password, :password_confirmation)
    end
    devise_parameter_sanitizer.for(:sign_in) do |u|
      u.permit(:first_name, :last_name, :email, :organization_id, :invitation_token, :password, :password_confirmation)
    end
    devise_parameter_sanitizer.for(:accept_invitation) do |u|
      u.permit(:first_name, :last_name, :email, :organization_id, :invitation_token, :password, :password_confirmation)
    end
    devise_parameter_sanitizer.for(:invite) do |u|
      u.permit(:first_name, :last_name, :email, :organization_id, :invitation_token, :password, :password_confirmation)
    end
  end
end
