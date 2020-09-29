# card.rb


class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit

    valid_suits = %i[hearts spades clubs diamonds]

    raise ArgumentError, 'Invalid Card Suit' unless valid_suits.include?(suit)
    raise ArgumentError, 'Invalid Value!' if value < 1 || value > 13

  end

  def to_s
    return "#{value} of #{suit.to_s}"
  end

end
