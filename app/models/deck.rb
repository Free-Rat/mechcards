class Deck < ApplicationRecord
    has_many :deckables
    has_many :cards, through: :deckables

    def total
        deckables.to_a.sum {|deckables| deckables.total }
    end
end
