def number_valid?(card_number)
  control_sum = card_number.chars.map(&:to_i).each.with_index.inject(0) do |sum, (number, index)|
    sum += index.even? ? number * 2  - (number / 5) * 9 : number
  end
  
  (control_sum % 10).zero?
end
