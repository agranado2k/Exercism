module BookKeeping
  VERSION = 2
end

class RunLengthEncoding
  def self.encode(to_code)
    encoded_string = ""
    
    to_code.chars.chunk {|c| c}.each do |c, ary|
      encoded_string = sub_encode(encoded_string, ary.length, c)
    end
    encoded_string
  end

  def self.sub_encode(current_encode_string, counter, char)
    current_encode_string += (counter > 1 ? "#{counter}#{char}" : char)
  end

  def self.decode(to_decode)
    to_decode.scan(/\d*[\w|\s|[[:graph:]]]/).inject('') do |current_string, sub_code|
      sub_decode(current_string, get_letter(sub_code), get_multiplo(sub_code))
    end
  end

  def self.sub_decode(string, letter, multiplo)
    string += letter*multiplo
  end

  def self.get_multiplo(encode)
    encode[0, encode.length-1].empty? ? 1 : encode[0, encode.length-1].to_i
  end

  def self.get_letter(encode)
    encode[-1]
  end
end