class QuestionsController < ApplicationController
  def destroy
    Question.find(params[:id]).destroy
    render nothing: true
  end
end
