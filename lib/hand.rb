class Hand
  attr_accessor :hand

  def initialize(cards)
    @hand = cards
  end

  def freq_hash
    freq = Hash.new{|hash,key| hash[key] = 0}
    hand.each { |card| freq[card.value] += 1 }
    freq
  end

  def pair
    freq = freq_hash
    sub_hash = freq.select{|key,val| val == 2}
    return true if sub_hash.length == 1
    return false
  end

  def two_pair
    freq = freq_hash
    sub_hash = freq.select{|key,val| val == 2}
    return true if sub_hash.length == 2
    return false
  end

  def three_of_a_kind
    freq = freq_hash
    sub_hash = freq.select{|key,val| val == 3}
    return true if sub_hash.length == 1
    return false

  end

  def four_of_a_kind
    freq = freq_hash
    sub_hash = freq.select{|key,val| val == 4}
    return true if sub_hash.length == 1
    return false
  end

  def flush
    freq = Hash.new{|hash,key| hash[key] = 0}
    hand.each { |card| freq[card.suit] += 1 }

    return true if freq.length == 1
    return false
  end

  def royal_flush

  end

  def straight

    freq.keys.map do |key|

    end




  end




end
