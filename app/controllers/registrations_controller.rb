class RegistrationsController < Devise::InvitationsController
  before_filter :update_resource_params

  def new
    puts "new invitationn"
    super
  end
  def create
    puts "invitation creation"
    super
  end
  # def update
  #   puts "invitation update"
  #   super
  # end
  def edit
    super
  end

  # this is called when accepting invitation
  # should return an instance of resource class
  def accept_resource
    resource = resource_class.accept_invitation!(attr_params)
    ## Report accepting invitation to analytics
    # Analytics.report('invite.accept', resource.id)
    resource
  end

  protected

  def attr_params
    params.require(:user).permit(:invitation_token, :password, :password_confirmation)
  end

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
