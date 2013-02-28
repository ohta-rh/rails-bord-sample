# coding: utf-8

class BordsController < ApplicationController

	def index
		@bords = Bord.all(:order => "created_at DESC")
	end

	def show
		@bord = Bord.find(params[:id])
		@comment = Bord.find(params[:id]).comments.build
	end

	def new
		@bord = Bord.new
	end

	def create
		@bord = Bord.new(params[:bord])
		if @bord.save
			redirect_to bords_path
		else
			render action: 'new'
		end
	end	
end
