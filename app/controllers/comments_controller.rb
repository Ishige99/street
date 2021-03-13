class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    if @comment.valid?
      @comment.save
    end
    redirect_to "/clothes/#{comment.clothe.id}"
  end

  private
  
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, clothe_id: params[:clothe_id])
  end

end
