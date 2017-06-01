class PhotosController < ApplicationController
  def index
    @photos = Photo.all
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
    @photo = Photo.find(@photo_id)
    tag = params[:tag]
    @photo.user << tag
    @photo.save

    @name = tag
    respond_to do |format|
      format.js { render :layout => false}
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :image)
  end  

end
