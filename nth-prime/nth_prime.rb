module BookKeeping
  VERSION = 1
end

class Prime
  def self.is_prime(number)
    is_prime = true
    for divisor in 2..number
      if divisor != number && number%divisor == 0
        is_prime = false 
        break
      end
    end
    is_prime
  end

  def self.nth(nth_prime)
    raise ArgumentError if nth_prime == 0
    prime_list = []
    current_number = 2

    while prime_list.size != nth_prime do
      prime_list.push(current_number) if is_prime(current_number)
      current_number += 1
    end

    prime_list.last
  end
end