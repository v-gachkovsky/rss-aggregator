class GroupsController < ApplicationController

  before_action :find_group, only: [:edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @groups = current_user.groups.includes(:feeds)
    @group = Group.new
  end

  def new
    @group = Group.new
  end

  def create
    @group = current_user.groups.build(group_params)
    if @group.save
      redirect_to groups_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @group.update(group_params)
      redirect_to groups_path
    else
      render :edit
    end
  end

  def destroy
    @group.destroy
    redirect_to groups_path
  end

  private

  def find_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name, feeds_attributes: feed_params)
  end

  def feed_params
    [:id, :name, :url, :_destroy]
  end

end
