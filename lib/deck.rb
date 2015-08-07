require_relative 'card'

class Deck
  attr_reader :cards

  def populate_deck
    cards = []
    Card.suits.each do |suit|
      Card.values.each do |value|
        cards << Card.new(suit,value)
      end
    end
    cards
  end

  def initialize
    @cards = populate_deck
  end




end
