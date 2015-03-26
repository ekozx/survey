class PollIntervalsController < ApplicationController
  def create
    interval = PollInterval.new(interval_params)
    interval.start = DateTime.new(params[:start][:year].to_i, params[:start][:month].to_i, params[:start][:day].to_i).to_s
    interval.end = DateTime.new(params[:end][:year].to_i, params[:end][:month].to_i, params[:end][:day].to_i).to_s
    interval.expired = false

    if interval.save
      redirect_to poll_interval_path(interval.id)
    else
      render nothing: true
    end
  end
  def show
  end
  private
  def interval_params
    params.require(:poll_interval).permit(:poll_id, :odh, :expired, :start, :end)
  end
end
