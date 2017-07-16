class PhoneNumber
  attr_reader :phone_number

  def to_s
    "(#{area_code}) #{number[3,3]}-#{number[6,number.size]}"
  end

  def area_code
    number[0,3]
  end

  def number
    return reponse_for_invalid_number if is_invalid_phone_number(phone_number) 
    handler_phone_number(clean_phone_number(phone_number))
  end

  def handler_phone_number(number)
    if number.size > 11
      reponse_for_invalid_number
    elsif is_eleven_number_beginnig_with_one(number)
      number[1,number.size]
    else
      number
    end
  end

  def clean_phone_number(number)
    number.gsub(/[^0-9]/,'')
  end

  def is_eleven_number_beginnig_with_one(number)
    number.size == 11 && number[0] == '1'
  end

  def is_invalid_phone_number(number)
    number.match(/[a-z]/) || number.size < 10 || (number.size == 11 && number[0] != '1')
  end

  def reponse_for_invalid_number
    '0'*10
  end

  def initialize(phone_number)
    @phone_number = phone_number
  end
end