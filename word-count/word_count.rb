module BookKeeping
  VERSION = 1
end

class Phrase
  def word_count
    @phrase.downcase.scan(/\w+'\w+|\w+/).inject(Hash.new(0)) do |result_hash, word| 
      result_hash[word] += 1
      result_hash
    end
  end

  def initialize(phrase)
    @phrase = phrase
  end
end