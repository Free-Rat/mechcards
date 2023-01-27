class Deckable < ApplicationRecord
  belongs_to :card
  belongs_to :deck

  def total
    card.size = quantity
  end
end
