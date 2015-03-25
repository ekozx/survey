class PollsController < ApplicationController
  def index
  end
  def show
    @poll = Poll.find(params[:id])
    @questions = @poll.questions
    @odh_questions = Question.where(odh: true)
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
end
