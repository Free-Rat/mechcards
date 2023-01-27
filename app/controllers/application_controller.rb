class ApplicationController < ActionController::Base
    before_action :set_render_deck
    before_action :initialize_deck

    def set_render_deck
        @render_deck = false
    end

    def initialize_deck
        @deck ||= Deck.find_by(id: session[:deck_id])

        if @deck.nil?
            @deck = Deck.create 
            session[:deck_id] = @deck.id 
        end
    end
end
