class QuestionsController < ApplicationController
  def home; end

  def ask
    @answer = params[:answer]
  end

  def answer
    @question = params[:question]

    if @question.blank?
      @answer = 'You didn\'t ask a question!'
    elsif @question == 'I am going to work' || @question == 'I\'m going to work!'
      @answer = 'Great!'
    elsif @question.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I don\'t care, get dressed and go to work!'
    end

    render 'ask', locals: { answer: @answer }
  end
end
