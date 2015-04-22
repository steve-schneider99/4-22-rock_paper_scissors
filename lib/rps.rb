class Fixnum
  define_method(:rps) do |player2|

    if self.eql?(player2)
      "You have tied."
    elsif self.eql?(1) && player2.eql?(2)
      "Player 2 wins."
    elsif self.eql?(1) && player2.eql?(3)
      "Player 1 wins."
    elsif self.eql?(2) && player2.eql?(1)
      "Player 1 wins."
    elsif self.eql?(2) && player2.eql?(3)
      "Player 2 wins."
    elsif self.eql?(3) && player2.eql?(1)
      "Player 1 wins."
    else
      "Player 2 wins."
    end
  end
end
