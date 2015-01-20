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
    @deck = Deck.new
  end

  private

  def deck_params
    params.require(:deck).permit(:name)
  end
end
