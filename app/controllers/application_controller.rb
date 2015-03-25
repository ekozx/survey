class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :update_resource_params, if: :devise_controller?
  def after_sign_in_path_for(user)
    '/dashboard'
  end
  # def after_sign_out_path_for(user)
  #   '/'
  # end
end
