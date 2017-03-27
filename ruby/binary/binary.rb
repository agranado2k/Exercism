module BookKeeping
  VERSION = 3
end

class Binary
  def self.to_decimal(binary)
    raise ArgumentError if binary.match(/[^01]/)
    binary.reverse
          .chars
          .map(&:to_i)
          .each_with_index
          .inject(0) {|decimal, (digit, index)| decimal + digit*(2**index) }
  end
end