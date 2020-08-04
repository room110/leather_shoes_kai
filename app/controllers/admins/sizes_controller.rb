class Admins::SizesController < ApplicationController
	def index
		@size = Size.new
		@sizes = Size.all
	end

	def edit
		@size = Size.find(params[:id])
	end

	def create
		@size = Size.new(size_params)
		if @size.save
		   redirect_back(fallback_location: root_path)
		else
		   render :index
		end
	end

	def update
		@size = Size.find(params[:id])
		if @size.update(size_params)
		   redirect_to admins_sizes_path
		else
		   redirect_back(fallback_location: root_path)
		end
	end

	private

    def size_params
    	params.require(:size).permit(:name)
    end

end
