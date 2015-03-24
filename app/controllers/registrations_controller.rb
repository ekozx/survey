class RegistrationsController < Devise::InvitationsController
  before_filter :update_resource_params

  def resource_params
    params.permit(user: [:name, :email,:invitation_token, :your_params_here])[:user]
  end
  def new
    puts "new invitationn"
    super
  end
  def create
    puts "invitation creation"
    super
  end
  def update
    puts "invitation update"
    super
  end
  def edit
    super
  end

  private

  def update_resource_params
    # Only add some parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:first_name, :last_name, :email, :organization_id)
    end
    devise_parameter_sanitizer.for(:sign_in) do |u|
      u.permit(:first_name, :last_name, :email, :organization_id)
    end
    devise_parameter_sanitizer.for(:accept_invitation) do |u|
      u.permit(:first_name, :last_name, :email, :organization_id)
    end
    devise_parameter_sanitizer.for(:invite) do |u|
      u.permit(:first_name, :last_name, :email, :organization_id)
    end
  end
end
