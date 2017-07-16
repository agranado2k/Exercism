module BookKeeping
  VERSION = 3
end

class Pangram
  def self.pangram?(phrase)
    return false if phrase.empty?
    (('a'..'z').to_a - phrase.gsub(/\s/,'').downcase.chars).size == 0
  end
end