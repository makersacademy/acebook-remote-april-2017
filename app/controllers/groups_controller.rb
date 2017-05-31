class GroupsController < ApplicationController

	def index
		@groups = groups.all
	end

end
