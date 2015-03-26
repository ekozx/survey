class PollsController < ApplicationController
  def index
  end
  def show
    @poll = Poll.find(params[:id])
    @questions = @poll.questions
    @odh_questions = Question.where(odh: true)
  end
  def destroy
    #Poll.destroy matters here over delete because destroy will kill child records
    #i.e. PollIntervals associated with this poll.
    Poll.destroy(params[:id])
    render nothing: true
  end
  def edit
    #Generating a new question
    @question = Question.new
    @question.odh = false
    @question.poll_id = params[:id]

    #For editing old questions
    @poll = Poll.find(params[:id])
    @questions = @poll.questions
    @odh_questions = Question.where(odh: true)
  end
  def new
  end
  def create
    Poll.create(poll_params)
    render nothing: true
  end
  protected
  def poll_params
    params.require(:poll).permit(:name, :organization_id)
  end
end
