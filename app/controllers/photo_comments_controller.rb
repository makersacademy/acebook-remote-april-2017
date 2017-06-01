class PhotoCommentsController < ApplicationController

  def create
    @photo = Photo.find(params[:photo_id])
    @comment = @photo.photo_comments.create(photo_comment_params)
    redirect_to photos_path
  end

  private

  def photo_comment_params
    params.require(:photo_comment).permit(:commenter, :body)
  end
end
