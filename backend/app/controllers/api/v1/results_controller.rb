class Api::V1::ResultsController < ApplicationController

  def show
    @quiz = Question.all.sort_by {|question| question.order }.map do |question|
      { id: question.id,
        text: question.text,
        choices: question.question_choices
      }
    end

    render json: @quiz
  end

  def create
  end
end
