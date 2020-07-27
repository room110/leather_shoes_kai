class ShoesController < ApplicationController
	def create
		@shoe = Shoe.new(shoe_params)
        @shoe.user_id = current_user.id
        @shoes = Shoe.all
        @user = current_user
      if @shoe.save
        flash[:notice] = "successfully"
        redirect_to shoe_path(@shoe.id)
      else
        render "index"
	  end
    end


	def show
	  @shoe = Shoe.find(params[:id])
      @shoe_new = Shoe.new
      @user = @shoe.user
      @shoe_comment = ShoeComment.new
	end

	def index
	    #kaminariページネーション記述
        @shoes = Shoe.page(params[:page]).reverse_order
		@shoe = Shoe.new
	end

	def edit
		@shoe = Shoe.find(params[:id])
	end

	def destroy
	  @shoe = Shoe.find(params[:id])
      shoe = current_user
      shoe.destroy
      redirect_to shoe_path(@shoe.id)
	end


private


def shoe_params
      params.require(:shoe).permit(:title, :body, :shoe_image, brand_ids: [])
end

end
