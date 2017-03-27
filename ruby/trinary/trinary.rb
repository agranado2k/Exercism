module BookKeeping
  VERSION = 1
end

class Trinary
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def to_decimal
    return 0 if number.match(/[^012]/)
    number.reverse.each_char.with_index.inject(0) do |sum, (char, index)| 
      sum + char.to_i*(3**index)
    end
  end
end