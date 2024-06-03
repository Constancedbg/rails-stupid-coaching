class QuestionsController < ApplicationController
  def ask; end

  def answer
    return @answer = 'Great!' if params[:question] == 'I am going to work'
    if params[:question].end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
