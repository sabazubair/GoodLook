class Api::V1::OutfitsController < ApplicationController
  def show
    @results = Result.all.sort_by {|result| result.id}.reverse!
    @latest_result = @results[0]
    @outfits = Outfit.all.where style_id: @latest_result.style_id
    @outfit_and_user = {
      user_id: @latest_result.user_id,
      outfits: @outfits,
      userOutfits: UserOutfit.all.where(user_id: @latest_result.user_id)
    }

    render json: @outfit_and_user
  end
end
