class PhotoCommentsController < ApplicationController

  def create
    @photo = Photo.find(params[:photo_id])
    @comment = @photo.photo_comments.create(comment_params)
    redirect_to photos_path
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
