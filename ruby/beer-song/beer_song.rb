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
    "#{quantity(number).capitalize} #{container(number)} of beer on the wall, #{quantity(number)} #{container(number)} of beer.\n" \
    "#{action(number)}, #{quantity(successor(number))} #{container(successor(number))} of beer on the wall.\n"  
  end

  def container(number)
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

  def pronoun(number)
    if number == 0
      "it"
    else
      "one"
    end
  end

  def quantity(number)
    if number == 0
      "no more"
    else
      number.to_s
    end
  end

  def successor(number)
    if number == 0
      99
    else
      number-1
    end
  end

  def action(number)
    if number == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun(successor(number))} down and pass it around"
    end
  end
end