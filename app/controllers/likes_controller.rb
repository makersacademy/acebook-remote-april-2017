class LikesController < ApplicationController
  before_action :find_likeable
  before_action :authenticate_user!

  def create
    @likeable.liked_by User.first
  end

  def destroy
    @likeable.disliked_by User.first
  end

  private
  def find_likeable
    @likeable_type = params[:likeable_type].classify
    @likeable = @likeable_type.constantize.find(params[:likeable_id])
  end
end
