class QuestionsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @questions = Question.order('created_at DESC')
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
    @answers = @question.answers.includes(:user)
  end

  private

  def question_params
    params.require(:question).permit(:question_title, :question_content, :language_id).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end
