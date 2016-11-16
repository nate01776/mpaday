class UsersController < ApplicationController
  def show
    @user = current_user
    @pictures = @user.pictures.order("created_at DESC")
  end
end
