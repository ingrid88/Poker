require 'hand'
require 'deck'
require 'card'

describe Hand do

  describe "initialize" do
    it "picks 5 cards from deck" do

    end

  end

  cards = [Card.new(:clubs, :three),Card.new(:spades, :three),Card.new(:hearts, :deuce),Card.new(:spades, :ace),Card.new(:diamonds, :ace)]
  hand = Hand.new(cards)

  describe "#freq_hash" do
    it "returns freq of card values in hand" do
      expect(hand.freq_hash).to eq(:three =>2, :deuce => 1, :ace=>2)
    end
  end

  describe "#pair" do
    it "calculates if hand has a pair" do
      allow(hand).to receive(:freq_hash).and_return({:three =>2, :deuce => 1, :ace=>1})
      expect(hand.pair).to eq(true)
    end
  end

  describe "#three of a kind" do
    it "calculates if hand has three of a kind" do
      allow(hand).to receive(:freq_hash).and_return({:three =>3, :deuce => 1, :ace=>1})
      expect(hand.three_of_a_kind).to eq(true)
    end
  end

  describe "#two pair" do
    it "calculates if hand has two pairs" do
      allow(hand).to receive(:freq_hash).and_return({:three =>2, :deuce => 2, :ace=>1})
      expect(hand.two_pair).to eq(true)
    end
  end

  describe "#four of a kind" do
    it "calculates if hand has two pairs" do
      allow(hand).to receive(:freq_hash).and_return({:deuce => 1, :ace=>4})
      expect(hand.four_of_a_kind).to eq(true)
    end
  end

  describe "flush" do
    it "calculates if a hand has a flush" do
      allow(hand).to receive(:freq_hash).and_return({:spades=>5})
      expect(hand.flush).to eq(true)
    end
  end

  describe "test" do
    it "tests key value" do
    #  allow(hand).to receive(:freq_hash).and_return({:spades=>5})
   #    expect(Card::values[:three]).to eq(3)
     card = Card.new(:clubs, :three)
     expect(card.rank).to eq(3)
    end
  end
    # it "calculates if hand has straight" do
    #
    # end
    #
    # it "calculates if hand has flush" do
    #
    # end
    #
    # it "calculates if hand has a full house" do
    #
    # end
    #
    # it "calculates if a hand has a four of a kind" do
    #
    # end
    # it "calculates if a hand has a four of a kind" do
    #
    # end
    # it "calculates if a hand has a four of a kind" do
    #
    # end



  describe "#hand_value" do
    it "determines value of hand" do

    end

  end

end
