module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end

class Sieve
  def remove_not_primes(primes, limit)
    primes_list = []
    for n in 2..limit
      primes_list.push(n) if primes[n]
    end
    primes_list
  end

  def check_if_next_number_are_primes(primes, number, limit)
    for check_number in number**2..limit
     primes[check_number] = false if check_number%number == 0
   end
   primes
  end

  def primes
    for number in 2..@limit
      @primes = check_if_next_number_are_primes(@primes, number, @limit)
    end
    remove_not_primes(@primes, @limit)
  end

  def initialize(limit)
    @limit = limit 

    @primes = {}
    for n in (2..limit)
      @primes[n] = true
    end
  end
end