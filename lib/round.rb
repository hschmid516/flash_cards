class Round
  attr_reader :deck, :turns, :number_correct

  def initialize(deck)
    @deck = deck
    @turns = []
    @number_correct = 0
  end

  def current_card
    @deck.cards.first
  end

  def take_turn(guess)
      new_turn = Turn.new(guess, current_card)
      @turns << new_turn
      if new_turn.correct? == true
        @number_correct += 1
      end
      @deck.cards.shift
      new_turn
  end

end
