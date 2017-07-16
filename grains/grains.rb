class Grains
  def self.square(nth_square)
    2**(nth_square-1)
  end

  def self.total
    (1..64).reduce(0){|total_grains, current_square| total_grains + square(current_square)}
  end
end