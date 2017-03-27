class PrimeFactors
  def self.for(number)
    factors_list = []
    factor = 2

    while number > 1
      while (number % factor).zero?
        factors_list << factor
        number = number / factor
      end
      factor += 1
    end
    factors_list
  end
end
