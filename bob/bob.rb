class Bob
  def self.hey(remark)
    case 
    when is_yelling?(remark)
      'Whoa, chill out!'
    when is_question?(remark)
      'Sure.'
    when is_silent?(remark)
      'Fine. Be that way!'
    else 
      "Whatever." 
    end
  end

  def self.is_yelling?(remark)
    remark == remark.upcase && remark.match(/([A-Z|a-z]+)/) 
  end

  def self.is_question?(remark)
    remark.end_with?('?')
  end

  def self.is_silent?(remark)
    remark.strip.empty?
  end
end