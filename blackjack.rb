require_relative 'deck'

class Hand
  def initialize(cards)
    @cards = cards
  end

  def calculate_hand
      sum = 0
      @cards.each do |card|
        card.chop!
        if card == 'J' || card == 'Q' || card == 'K'
          sum += 10
        elsif card == 'A'
          if sum >= 11
            sum += 1
          else
            sum += 11
          end
        else
        end
          sum += card.to_i

      end
      sum
  end
    # Your code here after writing tests
    # Think about what this method has to be able to do
end


=begin
@cards.each do |card|
  if card.to_i != 0
    score += card.to_i
  elsif card.include('A')
    if score >= 11
      score += 1
=end

deck = Deck.new
cards = deck.deal(2)
hand = Hand.new(cards)

# hand.calculate_score # Get this working properly
