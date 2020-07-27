class ShoeCommentsController < ApplicationController
  def create
    shoe = Shoe.find(params[:shoe_id])
    comment = current_user.shoe_comments.new(shoe_comment_params)
    comment.shoe_id = shoe.id
      if comment.save
        redirect_to shoe_path(shoe)
      else
        redirect_to shoe_path(shoe)
      end
  end

  def destroy
    ShoeComment.find_by(id: params[:id], shoe_id: params[:shoe_id]).destroy
    redirect_to shoe_path(params[:shoe_id])
  end


  private

  def shoe_comment_params
    params.require(:shoe_comment).permit(:comment)
  end

end
