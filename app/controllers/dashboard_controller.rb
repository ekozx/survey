class DashboardController < ApplicationController
  def index
    if user_signed_in?
      @organization = current_user.organization
      @polls = @organization.polls
    else
      redirect_to '/'
    end
  end
end
