module Luhn
  def self.is_valid?(number)
    return number.to_s.scan(/\d/).map(&:to_i).reverse.map.with_index(1) { |n,i|
      if i % 2 == 0 then
        #predicate ? consequent : alternative
        n * 2 > 9 ? n * 2 - 9 : n * 2
      else
        n
      end
    }.sum % 10 == 0
  end
end

#puts Luhn.is_valid?("4194 5603 8500 8504").inspect
#puts Luhn.is_valid?(4194560385008504).inspect