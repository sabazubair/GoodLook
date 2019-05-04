require 'json'

module Api::V1
  class ResultsController < ApplicationController

    def show
      @results = Result.all.sort_by {|result| result.id}.reverse!
      @latest_result = @results[0]
      @style = Style.find_by id: @latest_result.style_id

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
