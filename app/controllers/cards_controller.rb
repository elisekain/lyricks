class CardsController < ApplicationController
  before_action :set_card, only: [:show, :edit, :update, :destroy, :add_tag, :remove_tag]
  before_action :set_tags, only: [:index, :browse, :show, :sort, :sort_user]
  before_action :set_tag, only: [:add_tag, :remove_tag, :sort, :sort_user]
  before_action :sort_by_tag, only: [:sort, :sort_user]

  def index
    @cards = current_user.cards
  end

  def browse
    @cards = Card.all
  end

  def new
    @card = Card.new
  end

  def create
    @card = current_user.cards.create(card_params)
    if @card.save
      flash[:notice] = "#{@card.title} was successfully created."
      redirect_to cards_path
    else
      flash[:alert] = "Lyrick was not successfully created: 'title' and 'lyric excerpt' are required fields."
      render :new
    end
  end

  def show
    @text_collection = Card.lengthen(@card.lyrics)
  end

  def edit
  end

  def update
    if @card.update(card_params)
      flash[:notice] = "#{@card.title} was successfully updated."
      redirect_to card_path(@card)
    else
    flash[:alert] = "Lyrick was not successfully created: 'title' and 'lyric excerpt' are required fields."
      render :edit
    end
  end

  def destroy
    @card.destroy
    redirect_to cards_path
  end

  def add_tag
    @card.card_tags.create(tag: @tag)
    redirect_to card_path(@card)
  end
  #
  # remove tag
  def remove_tag
    @card.card_tags.where(tag: @tag).destroy_all
    redirect_to card_path(@card)
  end

  # sort all by tag
  def sort
    render :browse
  end

  # sort user's by tag
  def sort_user
    @cards = @cards.select { |card|  card.user == current_user  }
    render :index
  end


  private
  def card_params
    params.require(:card).permit(:title, :lyrics, :icon_selection, :color_selection, :font_selection, :private)
  end

  def set_card
    @card = Card.find(params[:id])
  end

  def set_tags
    @tags = Tag.all
  end

  def set_tag
    @tag = Tag.find(params[:tag_id])
    @sort_tag = Tag.find(params[:tag_id])
  end

  def sort_by_tag
    @cards = Card.includes(:tags).where('tags.title = ?', @sort_tag.title).references(:tags)
  end
end
