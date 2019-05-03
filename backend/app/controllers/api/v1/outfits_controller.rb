class Api::V1::OutfitsController < ApplicationController
  def show
    @result = Result.find_by user_id: 1
    @style = Style.find_by id: @result.style_id
    @outfit = Outfit.all.find_by style_id: @style.id

    render json: @outfit
  end
end
