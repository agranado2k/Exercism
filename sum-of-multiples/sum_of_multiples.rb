class SumOfMultiples
  def to(multiple_boundary)
    @numbers.reduce([]){|sum, number| sum + multiples(number, multiple_boundary)}.uniq.reduce(0,:+)
  end

  def multiples(multiple, boundary)
    (multiple..(boundary-1)).select {|number| number%multiple == 0}
  end

  def initialize(*numbers)
    @numbers = numbers
  end
end