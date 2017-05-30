class PhotoAlbumsController < ApplicationController
  def new
    @photo_album = PhotoAlbum.new
  end
end
