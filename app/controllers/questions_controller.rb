class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # @answers = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]
    if params[:question] == 'I am going to work'
      @answer = 'Great'
      # @answers[0]
    elsif params[:question].include?('?')
      @answer = 'Silly question, get dressed and go to work!'
      # @answers[1]
    else
      @answer = "I don't care, get dressed and go to work!"
      # @answers[2]
    end
  end
end
