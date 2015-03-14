class DashboardController < ApplicationController
  def index
    if user_signed_in?
      @organization = Organization.find(current_user.organization_id)
      @polls = @organization.polls
    else
      redirect_to '/'
    end
  end
end
