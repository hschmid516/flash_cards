class Turn
  attr_reader :guess,
              :card

  def initialize(guess, card)
    @guess = guess
    @card  = card
  end

  def correct?
    guess.downcase.strip == @card.answer.downcase
  end

  def feedback
    return 'Correct!' if correct? == true

    'Incorrect.'
  end
end
