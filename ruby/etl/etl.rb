class ETL
  def self.transform(old_data)
    old_data.each_with_object({}) do |(score,chars), new_data|
      chars.each do |k|
        new_data[k.downcase] = score
      end
      new_data
    end
  end
end