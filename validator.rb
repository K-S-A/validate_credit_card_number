def number_valid?(card_number)
  control_sum = card_number.chars.map(&:to_i).each.with_index.inject(0) do |sum, (number, index)|
    sum += index.even? ? number * 2  - (number / 5) * 9 : number
  end
  
  (control_sum % 10).zero?
end

def card_is_valid?(number)
  number =~ /^\d{16}$/ ? number_valid?(number) : false
end

print 'Enter credit card number for validation:'
number = gets.strip
puts card_is_valid?(number) ? "Card '#{number}' is valid." : "You've entered invalid number '#{number}'!"
