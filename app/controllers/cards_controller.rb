class CardsController < ApplicationController

  def index
    @cards = current_user.cards
    @tags = Tag.all
  end

  def browse
    @cards = Card.all
    @tags = Tag.all
  end

  def new
    @card = Card.new
  end

  def create
    @card = current_user.cards.create!(card_params)
    if @card.save
      flash[:notice] = "#{@card.title} was successfully created."
      redirect_to cards_path
    else
      render :new
    end
  end

  def show
    @card = Card.find(params[:id])
    @text_collection = @card.lyrics
    while @text_collection.length < 2200
      @text_collection += @card.lyrics
    end
  end

  def edit
    @card = Card.find(params[:id])
  end

  def update
    @card = Card.find(params[:id])
    if @card.update(card_params)
      flash[:notice] = "#{@card.title} was successfully updated."
      redirect_to card_path(@card)
    else
      render :edit
    end
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    redirect_to cards_path
  end

  private
  def card_params
    params.require(:card).permit(:title, :lyrics, :icon_selection, :color_selection, :font_selection, :private)
  end
end
