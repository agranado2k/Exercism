module BookKeeping
  VERSION = 2
end

class BeerSong
  def lyrics
    verses(99,0)
  end

  def verses(first_verse, last_verse)
    first_verse.downto(last_verse).inject([]){|result, verse| result << verse(verse)}.join("\n")
  end

  def verse(number)
    bootle_number = BottleNumber.for(number)
    "#{bootle_number.quantity.capitalize} #{bootle_number.container} of beer on the wall, #{bootle_number.quantity} #{bootle_number.container} of beer.\n" \
    "#{bootle_number.action}, #{bootle_number.successor.quantity} #{bootle_number.successor.container} of beer on the wall.\n"  
  end
end

class BottleNumber
  attr_reader :number

  def self.for(number)
    return number if number.kind_of?(BottleNumber)

    case number
    when 0
      BottleNumber0
    when 1
      BottleNumber1
    else
      BottleNumber
    end.new(number)
  end

  def initialize(number)
    @number = number
  end

  def container
    "bottles"
  end

  def pronoun
    "one"
  end

  def quantity
    number.to_s
  end

  def successor
    BottleNumber.for(number-1)
  end

  def action
    "Take #{pronoun} down and pass it around"
  end
end

class BottleNumber0 < BottleNumber
  def quantity
    "no more"
  end

  def successor
    BottleNumber.for(99)
  end

  def action
    "Go to the store and buy some more"
  end
end

class BottleNumber1 < BottleNumber
  def container
    "bottle"
  end

  def pronoun
    "it"
  end
end