class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def create
    board = Board.new(board_params)
    if board.save
      redirect_to boards_path
    else
      redirect_to new_board_path
    end
  end

  def show
    @board = Board.find(params[:id])
  end

  private
  def board_params
    params.require(:board).permit(:title).merge(user_id: current_user.id)
  end
end
