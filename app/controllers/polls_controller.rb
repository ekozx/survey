class PollsController < ApplicationController
  def index
  end
  def show
    @poll = Poll.find(params[:id])
  end
  def edit
    @poll = Poll.find(params[:id])
  end
  def map
  end
end
