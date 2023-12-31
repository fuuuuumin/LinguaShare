class AnswersController < ApplicationController
  
  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      redirect_to question_path(@answer.question)
    else
      @question = @answer.question
      @answers = @question.answers
      render "questions/show"
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:answer_content).merge(user_id: current_user.id, question_id: params[:question_id])
  end

end
