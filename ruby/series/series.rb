class Series
  attr_reader :number

  def slices(limit)
    raise ArgumentError if limit > number.length
    (limit..number.length).map { |n| number[n-limit, limit] }
  end

  def initialize(number)
    @number = number.to_s
  end
end