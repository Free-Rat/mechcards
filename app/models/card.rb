class Card < ApplicationRecord
    has_many :deckables
    has_many :decks, through: :deckables

    after_initialize :set_defaults 
    
    def set_defaults
        size = 1
    end

end
