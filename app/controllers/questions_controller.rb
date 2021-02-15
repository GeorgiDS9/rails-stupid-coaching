# app/controllers/questions_controller.rb
class QuestionsController < ApplicationController
  def ask
    puts 'What are you doing now?'
  end

  def answer
    @ask = params[:ask]
    if @ask == 'I am going to work right now!'
      @answer = 'Great!'
    elsif @ask.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I do not care, get dressed and go to work!'
    end
  end
end
