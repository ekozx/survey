class RegistrationsController < Devise::InvitationsController
  before_filter :update_resource_params
  #pretty sure I'll want this, but it's untested
  before_filter :authenticate_user!

  def new
    super
  end
  def create
    super
  end
  def update
    super
  end
  def edit
    super
  end

  # this is called when accepting invitation
  # should return an instance of resource class
  def accept_resource
    resource = resource_class.accept_invitation!(attr_params)
    ## Report accepting invitation to analytics --will need implemented later
    # Analytics.report('invite.accept', resource.id)
    resource
  end

  protected
  def attr_params
    params.require(:user).permit(:invitation_token, :password, :password_confirmation)
  end
end
