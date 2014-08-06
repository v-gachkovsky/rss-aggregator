class GroupsController < ApplicationController

  before_action :find_group, only: [:edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @groups = current_user.groups.includes(:feeds)
    #@groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    # @group = current_user.groups.new(params.require(:group).permit(:name))
    # @group = Group.new
    @group = Group.new(group_params)
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
    params.require(:group).permit(:name)
  end

end
