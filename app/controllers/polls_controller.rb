class PollsController < ApplicationController
  def index
  end
  def show
    @poll = Poll.find(params[:id])
    @questions = @poll.questions
    @odh_questions = Question.where(odh: true)
  end
  def edit
    @poll = Poll.find(params[:id])
    @questions = @poll.questions
    @odh_questions = Question.where(odh: true)
  end
  def delete_question
  end
end
