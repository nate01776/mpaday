class PicturesController < ApplicationController
  def index
    @user = current_user
    @pictures = Picture.all.order("created_at DESC")
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def new
    @picture = Picture.new
  end

  def create
    @user = current_user
    @picture = Picture.new(picture_params)
    @picture.user = @user

    if @user.pictures == []
      @picture.day_number = 1
      @user.first_day = Time.now
      @user.current_streak = 1
    elsif @user.pictures.last.created_at.day != (Time.now - 1.day).day
      @picture.day_number = @user.pictures.length + 1
      @user.current_streak = 1
    else
      @picture.day_number = @user.pictures.length + 1
      @user.current_streak += 1
    end

    if @picture.save
      @user.save
      redirect_to picture_path(@picture.id)
    end
  end

  private

  def picture_params
    params.require(:picture).permit(:description, :image)
  end
end
