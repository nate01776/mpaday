class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @pictures = @user.pictures.order("created_at DESC")
  end
end
