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
    @tags = Tag.all
    @text_collection = @card.lyrics
    while @text_collection.length < 2400
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

  def add_tag
    @card = Card.find(params[:id])
    @tag = Tag.find(params[:tag_id])
    @card.card_tags.create(tag: @tag)
    redirect_to card_path(@card)
  end
  #
  # remove tag
  def remove_tag
    @card = Card.find(params[:id])
    @tag = Tag.find(params[:tag_id])
    @card.card_tags.where(tag: @tag).destroy_all
    redirect_to card_path(@card)
  end

  # sort all by tag
  def sort
    @sort_tag = Tag.find(params[:tag_id])
    @cards = Card.includes(:tags).where('tags.title = ?', @sort_tag.title).references(:tags)
    @tags = Tag.all
    render :browse
  end

  # sort user's by tag
  def sort_user
    @sort_tag = Tag.find(params[:tag_id])
    @cards = Card.includes(:tags).where('tags.title = ?', @sort_tag.title).references(:tags)
    @cards = @cards.select { |card|  card.user == current_user  }
    @tags = Tag.all
    render :index
  end

  private
  def card_params
    params.require(:card).permit(:title, :lyrics, :icon_selection, :color_selection, :font_selection, :private)
  end
end
