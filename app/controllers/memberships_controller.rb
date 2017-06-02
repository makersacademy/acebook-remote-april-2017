class MembershipsController < ApplicationController
  def create
    Membership.create(membership_params) if current_user
    redirect_to group_path(params[:group_id])
  end

  private

  def membership_params
    params.permit(:group_id, :user_id).merge(group_id: params[:group_id], user_id: current_user.id)
  end 
end
