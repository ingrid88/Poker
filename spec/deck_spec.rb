require 'deck'


describe Deck do
  deck = Deck.new
  describe "#initialize" do
    #deck = Deck.new
    it "intializes with a deck of 52 cards" do
      expect(deck.cards.length).to eq(52)
    end

    it "all cards are unique in deck" do
      expect(deck.cards.uniq.length).to eq(52)
    end

  end





end
