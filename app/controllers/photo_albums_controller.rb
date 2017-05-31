class PhotoAlbumsController < ApplicationController

  def index
    @photo_albums = PhotoAlbum.all
  end

  def new
    @photo_album = PhotoAlbum.new
  end

  def create
    @photo_album = PhotoAlbum.create(photo_album_params)
    redirect_to photo_albums_url
  end

  private

  def photo_params
    params.require(:photo_album).permit(:title, :location, :date)
  end

end
