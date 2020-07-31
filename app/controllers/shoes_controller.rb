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


  def update
    @shoe = Shoe.find(params[:id])
      if @shoe.update(shoe_params)
        flash[:notice] = "successfully"
        redirect_to shoe_path(@shoe.id)
      else
        render "edit"
      end
  end

	def destroy
	  @shoe = Shoe.find(params[:id])
      shoe = current_user
      @shoe.destroy
      redirect_to shoes_path
	end


private


def shoe_params
      params.require(:shoe).permit(:title, :body, :shoe_image, brand_ids: [])
end

end
