class UsersController < ApplicationController

	def show
	
		user = User.find_by_id(params['id'])
		
		@username = user.name
		@stitch_count = user.tags.count
		@contribution_count = user.contributions.count
		
		@stitches = user.tags.all
		
	end
end
