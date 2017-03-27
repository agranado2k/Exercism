module BookKeeping
  VERSION = 2
end

class Robot
  def name
    @name ||= "RD#{Random.new.rand(1000)}"
    @name
  end

  def reset
    @name = nil
  end
end