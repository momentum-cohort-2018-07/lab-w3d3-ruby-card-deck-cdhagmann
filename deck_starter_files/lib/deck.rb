require_relative "card"

class Deck
  def initialize
    @deck = []
    [:clubs, :diamonds, :hearts, :spades].reverse.each do |suit|
      [:A, 2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K].reverse.each do |rank|
        @deck << Card.new(rank, suit)
      end
    end
  end

  def cards_left
    @deck.length
  end

  def draw
    @deck.pop
  end

  def shuffle
    @deck.shuffle
  end
end
