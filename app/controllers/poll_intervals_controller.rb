class PollIntervalsController < ApplicationController
  def create
    interval = PollInterval.new(interval_params)
    #Create the times for start and end
    #This code is kind of fishy, is there a better way to do this?
    interval.start = DateTime.new(params[:start][:year].to_i,
                                  params[:start][:month].to_i,
                                  params[:start][:day].to_i).to_s
    interval.end = DateTime.new(params[:end][:year].to_i,
                                params[:end][:month].to_i,
                                params[:end][:day].to_i).to_s
    interval.expired = false

    if interval.save
      redirect_to poll_interval_path(interval.id)
    else
      render nothing: true
    end
  end
  def show
    @interval = PollInterval.find(params[:id])
    @poll = Poll.find(@interval.poll_id)
    # creating a new question for admins
    @question = Question.new
    @question.odh = false
    @question.poll_interval_id = @interval.id
    #fetching various questions
    @questions = @interval.questions.where(odh: false)
    if @interval.odh then @odh_questions = Question.where(odh: true) end
  end
  protected
  def interval_params
    params.require(:poll_interval).permit(:poll_id, :odh, :expired, :start, :end)
  end
end
