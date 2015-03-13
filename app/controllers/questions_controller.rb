class QuestionsController < ApplicationController
  def destroy
    Question.find(params[:id]).destroy
    render nothing: true
  end
  def create
    Question.create(question: params[:question][:question],
                    odh: (params[:question][:odh] == 'true'), poll_id: params[:question][:poll].to_i)
    render nothing: true
  end
end
