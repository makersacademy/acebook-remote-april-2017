class GroupsController < ApplicationController

  def new
    @group = Group.new
  end

  def create
    @group = Group.create(group_params)
    redirect_to groups_url
  end

  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
    members = @group.users
  end

  def update
    Membership.create(user_id: current_user.id, group_id: params[:id]) if current_user
    redirect_to group_path(params[:id])
  end

  private

  def group_params
    params.require(:group).permit(:title)
  end

end
