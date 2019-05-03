class Api::V1::OutfitsController < ApplicationController
  def show
    @result = Result.find_by user_id: 1
    @outfit = Outfit.all.find_by style_id: @result.style_id

    render json: @outfit
  end
end
