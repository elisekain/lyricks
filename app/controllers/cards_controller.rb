class CardsController < ApplicationController

  def index
    @cards = Card.all
  end
  #
  # # new
  # def new
  #   @board = Board.find(params[:board_id])
  #   @pin = Pin.new
  # end
  #
  # # create
  # def create
  #   @board = Board.find(params[:board_id])
  #   @pin = current_user.pins.create!(pin_params.merge(board: @board))
  #   if @pin.save
  #     flash[:notice] = "#{@pin.title} was successfully created."
  #     redirect_to @board
  #   else
  #     render :new
  #   end
  # end
  # #
  # # #show
  # # def show
  # #   @song = Song.find(params[:id])
  # #   @artist = @song.artist
  # # end
  # #
  # # edit
  # def edit
  #   @pin = Pin.find(params[:id])
  #   @board = Board.find(params[:board_id])
  # end
  #
  # # update
  # def update
  #   @pin = Pin.find(params[:id])
  #   @board = Board.find(params[:board_id])
  #   if @pin.update(pin_params)
  #     flash[:notice] = "#{@pin.title} was successfully updated."
  #     redirect_to @board
  #   else
  #     render :edit
  #   end
  # end
  #
  # # destroy
  # def destroy
  #   @board = Board.find(params[:board_id])
  #   @pin = Pin.find(params[:id])
  #   @pin.destroy
  #   redirect_to @board
  # end
  #
  #
  # private
  # def pin_params
  #   params.require(:pin).permit(:title, :image)
  # end
end
