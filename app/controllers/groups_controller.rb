class GroupsController < ApplicationController

  def new
    @group = Group.new
  end

  def create
    @group = Group.create
    redirect_to groups_url
  end

  def index
    @groups = Group.all
  end

end
