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
  end

  def update
    Membership.create(user_id: User.current_user, group_id: params[:id])
    redirect_to path_to_group
  end

  private

  def group_params
    params.require(:group).permit(:title)
  end

end
