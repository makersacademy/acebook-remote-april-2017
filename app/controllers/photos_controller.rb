class PhotosController < ApplicationController

  def index
    @photos = Photo.all
    @users = User.all
    @tagging = Tagging.new
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.create(photo_params)
    redirect_to photos_url
  end

  def tag

    @photo_id = params[:photo_id]
    @tagging = params[:tagging]
    # @user_id = @tagging.user_id
    # tag = params[:tag]
    # @name = tag
    # redirect_to photos_url
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :image)
  end

end
