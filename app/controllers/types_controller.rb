class TypesController < ApplicationController
	def index
		@type = Type.new
		@types = Type.all
	end

	def edit
		@type = Type.find(params[:id])
	end

	def create
		@type = Type.new(type_params)
		if @type.save
		   redirect_back(fallback_location: root_path)
		else
		   render :index
		end
	end

	def update
		@type = Type.find(params[:id])
		if @type.update(type_params)
		   redirect_to _path
		else
		   redirect_back(fallback_location: root_path)
		end
	end

	private

    def type_params
    	params.require(:type).permit(:name)
    end
end
