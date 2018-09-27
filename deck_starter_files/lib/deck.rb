require_relative "card"

class Deck
    attr_accessor 

    def initialize
        @deck = []
        @rank_values = [:A, 2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K]
        @suit_values = [:clubs, :diamonds, :hearts, :spades]

        builder
    end

    def builder
        @suit_values each do |suit|
            @rank_values each do |rank|
                card = Card.new(rank, suit)
                @deck << card
            end
        end
    end

    def draw
        @deck.shift
    end

    def shuffle
        @deck.shuffle!
    end

    def cards_left
        @deck.length
    end

end

