module Api::V1
  class QuizzesController < ApplicationController
    def new
      @quiz = Question.all.sort_by {|question| question.order }.map do |question|
        { id: question.id,
          text: question.text,
          choices: question.question_choices,
          order: question.order
        }
      end

      render json: @quiz



      # [
      #   { id: 1,
      #     text: "abc",
      #     choices: [
      #       { id: 1,
      #         text: "hello",
      #         style_id: 10,
      #         image: ""
      #       },
      #       { id: 2,
      #         text: "there",
      #         style_id: 11,
      #         image: ""
      #       }
      #     ]
      #   }
      # ]
      # render json: @questions
    end

  end
end
