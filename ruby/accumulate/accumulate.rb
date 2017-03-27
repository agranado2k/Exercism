module BookKeeping
  VERSION = 1
end

module Enumerable
  def accumulate
    out = []
    each {|e| out << yield(e)}
    out
  end
end