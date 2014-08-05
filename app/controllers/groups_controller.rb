class GroupsController < ApplicationController
	layout "application2"
	before_action :authenticate_user!
	def index
		@groups = Group.all.includes(:feeds)
	end
end
