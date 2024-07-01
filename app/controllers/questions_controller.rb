# app/controller/questions_controller.rb
class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = params[:answer]
    if @question.include?('I am going to work right now!')
      @answer = 'Great!'
    elsif @question.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
