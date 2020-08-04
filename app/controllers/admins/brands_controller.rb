class Admins::BrandsController < ApplicationController
	def index
		@brand = Brand.new
		@brands = Brand.all
	end

	def edit
		@brand = Brand.find(params[:id])
	end

	def create
		@brand = Brand.new(brand_params)
		if @brand.save
		   redirect_back(fallback_location: root_path)
		else
		   render :index
		end
	end

	def update
		@brand = Brand.find(params[:id])
		if @brand.update(brand_params)
		   redirect_to admins_brands_path
		else
		   redirect_back(fallback_location: root_path)
		end
	end

	private

    def brand_params
    	params.require(:brand).permit(:name)
    end

end
