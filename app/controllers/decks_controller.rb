class DecksController < ApplicationController

  def index
    @decks = Deck.all
  end

  def new
    @deck = Deck.new
  end

  def create
    @deck = Deck.new(deck_params)
    @deck.save
    redirect_to :decks
  end

  def edit
    @deck = find_deck
  end

  def update
    @deck = find_deck
    @deck.update(deck_params)
    redirect_to :decks
  end

  def destroy
    @deck = find_deck
    @deck.destroy
    redirect_to :decks
  end

  private

  def deck_params
    params.require(:deck).permit(:name)
  end

  def find_deck
    Deck.find(params[:id])
  end
end
