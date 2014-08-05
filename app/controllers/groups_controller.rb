class GroupsController < ApplicationController
	before_action :authenticate_user!
	def index
		@groups = Group.all.includes(:feeds)
	end
end
