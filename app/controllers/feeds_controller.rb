class FeedsController < ApplicationController
  
  before_action :authenticate_user!
  before_action :find_feed, only: [:edit, :update, :destroy]

  def index
    @feeds = Feed.all
  end

  def edit
  end

  def new
    @feed = Feed.new
  end

  def create
  end

  def show
  end

  def update
    if @feed.update(feed_params)
      redirect_to feeds_path
    else
      render :edit
    end
  end

  def destroy
    @feed.destroy
    redirect_to feeds_path
  end

  private

  def find_feed
    @feed = Feed.find(params[:id])
  end

  def feed_params
    params.require(:feed).permit(:name, :url)
  end

end
