class Admins::LeathersController < ApplicationController
	def index
		@leather = Leather.new
		@leathers = Leather.all
	end

	def edit
		@leather = Leather.find(params[:id])
	end

	def create
		@leather = Leather.new(brand_params)
		if @leather.save
		   redirect_back(fallback_location: root_path)
		else
		   render :index
		end
	end

	def update
		@leather = Leather.find(params[:id])
		if @leather.update(leather_params)
		   redirect_to admins_leathers_path
		else
		   redirect_back(fallback_location: root_path)
		end
	end

	private

    def leather_params
    	params.require(:leather).permit(:name)
    end

end
