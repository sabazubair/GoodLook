class Api::V1::OutfitsController < ApplicationController
  def show
    @results = Result.all.where(user_id: 2).sort_by {|result| result.id}.reverse!
    @latest_result = @results[0]
    @outfit = Outfit.all.where style_id: @latest_result.style_id

    render json: @outfit
  end
end
