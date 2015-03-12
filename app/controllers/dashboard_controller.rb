class DashboardController < ApplicationController
  def index
    if user_signed_in?
      @organization = Organization.where(id: current_user.id).take
      @polls = @organization.polls
    else
      redirect_to '/'
    end
  end
end
