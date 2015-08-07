require 'card'

describe Card do
  let(:card) {Card.new(:spades, :ace)}

  describe "initialize" do

    it "initializes with a suit" do
      expect(card.suit).to eq(:spades)
    end

    it "initializes with a value" do
      expect(card.value).to eq(:ace)
    end

    it "raises an error for an invalid suit or value" do
      expect {Card.initialize(:spots, 15)}.to raise_error
    end


  end


  describe "#suits" do

    it "expects suits to contain clubs, diamonds, hearts, and spades" do
      expect(Card.suits).to eq([:clubs,:diamonds,:hearts,:spades])
    end
  end

end
