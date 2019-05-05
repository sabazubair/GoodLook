class Api::V1::UserOutfitsController < ApplicationController
 def show
  # @user = User.find_by id: 2

  # @user_outfits = @user.user_outfits.map do |outfit|
  #       outfit.outfit_id
  #     end


  @results = Result.all.sort_by {|result| result.id}.reverse!
  @latest_result = @results[0]
  @user_outfits = UserOutfit.all.where(user_id: @latest_result.user_id).map do |useroutfit|
       {
         outfit: Outfit.find_by(id: useroutfit.outfit_id)
       }
     end

   render json: @user_outfits
 end

 def create
  @results = Result.all.sort_by {|result| result.id}.reverse!
  @latest_result = @results[0]
  @user_outfit_exists = UserOutfit.find_by(user_id: @latest_result.user_id, outfit_id: useroutfit_params[:outfit_id])

  if @user_outfit_exists == nil
    @user_outfit = UserOutfit.new(useroutfit_params)
    @user_outfit.save!
    render json: @user_outfit
  end
 end

 # def destroy
 #  @results = Result.all.sort_by {|result| result.id}.reverse!
 #  @latest_result = @results[0]
 #  @outfit = UserOutfit.find_by(user_id: @latest_result.user_id, outfit_id: useroutfit_params[:outfit_id])

 #  @outfit.destroy
 # end

 private def useroutfit_params
  params.require(:user_outfit).permit(:user_id, :outfit_id)
 end
end