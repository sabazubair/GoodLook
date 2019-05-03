require 'json'

module Api::V1
  class ResultsController < ApplicationController

    def show
      @result = Result.find_by user_id: 1
      @style = Style.find_by id: @result.style_id

      render json: @style
    end

    def create
      @result = Result.new(result_params)

      if @result.save!
        render json: @result
      end
    end

    private
    def result_params
      params.require(:result).permit(:user_id, :style_id)
    end

  end
end
