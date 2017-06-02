class CommentsController < ApplicationController

  def create
    if params[:post_id]
     @post = Post.find(params[:post_id])
     @comment = @post.comments.create(comment_params)
     redirect_to posts_path
   elsif params[:photo_id]
     @photo = Photo.find(params[:photo_id])
     @comment = @photo.comments.create(comment_params)
     redirect_to photos_path
   end
  end

  private


  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end

end
