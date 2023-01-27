class DeckController < ApplicationController
  def show
    @render_deck = false
  end

  def add
    @card = Card.find_by(id: params[:id])
    quantity = params[:quantity].to_i
    current_deckable = @deck.deckables.find_by(card_id: @card.id)

    if current_deckable && quantity > 0
      current_deckable.update(quantity:quantity)
    elsif quantity <= 0
      current_deckable.destroy
    else 
      @deck.deckables.create(card: @card, quantity:quantity)
    end
  end

  def remove
    Deckable.find_by(id: params[:id]).destroy
  end
end