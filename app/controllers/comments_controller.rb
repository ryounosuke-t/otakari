class CommentsController < ApplicationController

  def create
    Comment.create(comment_params)
    redirect_to controller: 'items', action: 'show', id: params[:item_id]
  end

  private
  def comment_params
    params.permit(:id, :content, :item_id).merge(user_id:current_user.id)
  end

end
