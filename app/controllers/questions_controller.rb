class QuestionsController < ApplicationController
  def destroy
    Question.find(params[:id]).destroy
    render nothing: true
  end
  def create
    Question.create(question: params[:question][:question],
                    odh: (params[:question][:odh] == 'true'),
                    poll_interval_id: params[:question][:poll_interval_id].to_i)
    render nothing: true
  end
end
