class PhotosController < ApplicationController

  def index
    @photos = Photo.all
    @users = User.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.create(photo_params)
    redirect_to photos_url
  end

  def tag
    @photo_id = 1
    @photo = Photo.find(@photo_id)
    tag = params[:tag]

    @name = tag
    respond_to do |format|
      format.js { render :layout => false}
    end
    redirect_to photos_url
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :image)
  end

end
