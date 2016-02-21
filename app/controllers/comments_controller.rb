 class CommentsController < ApplicationController

	before_action :set_place

	def create
		@comment = @place.comments.create(comment_params)
		redirect_to @place
	end

	def destroy

	end

	private
	def set_place
		@place = Place.find_by_name(params[:place_id])
	end

	def comment_params
		params[:comment].permit(:content)
	end

end
