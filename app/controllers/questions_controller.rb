class QuestionsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @questions = Question.all
    @user_answer = UserAnswer.new
    @alternatives = Alternative.all
    @question = Question.first
  end

end
