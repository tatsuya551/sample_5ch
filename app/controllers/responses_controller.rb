class ResponsesController < ApplicationController
  def create
    response = Response.new(response_params)
    if response.save
      redirect_to board_path(response.board)
    else
      redirect_to board_path(response.board)
    end
  end

  private
  def response_params
    params.require(:response).permit(:comment).merge(user_id: current_user.id, board_id: params[:board_id])
  end
end
