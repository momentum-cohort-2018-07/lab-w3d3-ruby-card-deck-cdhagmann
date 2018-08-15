class Card
  attr_reader :rank
  attr_reader :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def greater_than?(card)
    order = [:A, 2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K]
    order.index(@rank) > order.index(card.rank) 
  end 

  def ==(another_card)
    self.suit == another_card.suit &&
    self.rank == another_card.rank
  end
end