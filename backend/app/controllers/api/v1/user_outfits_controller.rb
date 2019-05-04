class Api::V1::UserOutfitsController < ApplicationController
 def index
  # @user = User.find_by id: 2

  # @user_outfits = @user.user_outfits.map do |outfit|
  #       outfit.outfit_id
  #     end
   @user_outfits = UserOutfit.all.where(user_id: 2).map do |useroutfit|
       {
         outfit: Outfit.find_by(id: useroutfit.outfit_id)
       }
     end

   render json: @user_outfits
 end
end