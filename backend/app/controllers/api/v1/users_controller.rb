class Api::V1::UsersController < ApplicationController
  def create
    @user = User.create!(email: "user@test.com", password: "test")

    render json: @user.id
  end
end