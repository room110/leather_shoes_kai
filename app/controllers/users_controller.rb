class UsersController < ApplicationController
def index
  @shoe = Shoe.new
	@users = User.all
end

def show
	@shoe = Shoe.new
  @user = User.find(params[:id])
  @shoes = @user.shoes
end

def edit
	@user = User.find(params[:id])
end

def update
  	@user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "successfully"
      redirect_to user_path(@user.id)
    else
      render "edit"
    end
end


private

def user_params
      params.require(:user).permit(:name, :profile_image, :introduction)
end



end
