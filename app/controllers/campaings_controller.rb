class CampaingsController < ApplicationController

	def index
		@campaings = Campaing.order("participants DESC")
	end

	def show
		@campaing = Campaing.find(params[:id])
	end

	def new
		@campaing = Campaing.new
	end

	def create
		@campaing = Campaing.new(params[:campaing])
		
		if @campaing.save
			redirect_to(action: "show", id: @campaing)		
		else
			render action: "new"
		end
	end

	def edit
		@campaing = Campaing.find(params[:id])
	end

	def update
		@campaing = Campaing.find(params[:id])

		if @campaing.update_attributes(params[:campaing])
			redirect_to(action: "show", id: @campaing)
		else
			render action: "edit"
		end
	end

	def destroy
		@campaing = Campaing.find(params[:id])
		@campaing.destroy
		redirect_to(action: "index")
	end

	def teste

	end
end
