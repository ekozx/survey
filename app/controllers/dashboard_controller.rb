class DashboardController < ApplicationController
  def index
    if user_signed_in?
      #organization_id is used several times
      organization = current_user.organization_id
      @organization = Organization.find(organization)
      @polls = @organization.polls
      #if they want to build a new poll
      @poll = Poll.new
      @poll.organization_id = organization
    else
      redirect_to '/'
    end
  end
end
