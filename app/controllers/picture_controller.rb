class PictureController < ApplicationController
  def index
    @pictures = Picture.all
  end
end
