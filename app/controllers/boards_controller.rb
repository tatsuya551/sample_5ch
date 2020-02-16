class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def create
    board = Board.new(board_params)
    # binding.pry
    if board.save
      redirect_to boards_path
    else
      redirect_to new_board_path
    end
  end

  def show
    @board = Board.find(params[:id])
    @response = Response.new
    @responses = Response.where(board_id: @board.id)
  end

  private
  def board_params
    params.require(:board).permit(:title, category_ids: []).merge(user_id: current_user.id)
  end
end
