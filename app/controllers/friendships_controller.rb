class FriendshipsController < ApplicationController
  def create
    if current_user
      @friendship = current_user.friendships.build(friend_id: params[:friend_id])
      if @friendship.save
        flash[:notice] = "Added friend"
      else
        friend = @friendship.friend
        flash[:notice] = "Error Adding Friend"
      end
      redirect_to root_url
    end
  end

  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Removed friendship"
    redirect_to current_user
  end
end
