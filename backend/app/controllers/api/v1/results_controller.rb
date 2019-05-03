module Api::V1
  class ResultsController < ApplicationController

    def show
      @result = Result.find_by user_id: 1
      @style = Style.find_by id: @result.style_id

      render json: @style
    end

    def create
    end
  end
end
