# app/controllers/questions_controller.rb
class QuestionsController < ApplicationController
  def ask
    puts 'What are you doing now?'
  end

  def answer
    if params[:ask].downcase == 'I am going to work right now!'
      ''
    elsif params[:ask].end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      'I do not care, get dressed and go to work!'
    end
  end
end
