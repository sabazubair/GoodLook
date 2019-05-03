class Api::V1::UserOutfitsController < ApplicationController
  def show
    @user_outfits = UserOutfit.all.where(user_id: 2).map do |useroutfit|
        { id: useroutfit.id,
          outfit: useroutfit.outfit #Outfit.find_by(id: useroutfit.outfit_id)
        }
      end

    render json: @user_outfits
  end
end