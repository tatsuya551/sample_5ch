class ResponsesController < ApplicationController
  def create
    response = Response.create(response_params)
    redirect_to board_path(response.board)
  end

  private

  def response_params
    params.require(:response).permit(:comment).merge(user_id: current_user.id, board_id: params[:board_id])
  end
end
