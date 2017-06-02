class LikesController < ApplicationController
  before_action :find_likeable
  before_action :authenticate_user!

  def create
    @likeable.liked_by current_user
    redirect_to posts_path if @likeable_type == 'Post'
    redirect_to photos_path if @likeable_type == 'Photo'
  end

  private
  def find_likeable
    @likeable_type = params[:likeable_type].classify
    @likeable = @likeable_type.constantize.find(params[:likeable_id])
  end
end
