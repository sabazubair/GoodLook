class Api::V1::UserOutfitsController < ApplicationController
 def show
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

 def create
  @user_outfit_exists = UserOutfit.find_by(user_id: useroutfit_params[:user_id], outfit_id: useroutfit_params[:outfit_id])

  if @user_outfit_exists == nil
    @user_outfit = UserOutfit.new(useroutfit_params)
    @user_outfit.save!
    render json: @user_outfit
  end


  # if @user_outfit.save!
  #   render json: @user_outfit
  # end
 end

 private def useroutfit_params
  params.require(:user_outfit).permit(:user_id, :outfit_id)
 end
end