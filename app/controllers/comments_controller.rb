class CommentsController < ApplicationController

	def create
		@bord = Bord.find(params[:bord_id])
		@comment = Bord.find(params[:bord_id]).comments.new(params[:comment])

		if @comment.save
			redirect_to bord_path(@bord)
		else
			render :template => "bords/show"
		end
	end

end
