# frozen_string_literal: true

# Controller for the questions
class QuestionsController < ApplicationController
  def answer
    @question = params[:question]
    stop = 'I am going to work right now!'
    @answer = if @question == stop || @question == stop.upcase
                ''
              elsif @question.end_with?('?')
                'Silly question, get dressed and go to work!'
              else
                'I dont care, get dressed and go to work!'
              end
    # p "I can feel your motivation! #{@answer}" if @question.upcase!
  end
end
