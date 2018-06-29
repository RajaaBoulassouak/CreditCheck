card_number = "5541801923795240".chars

every_other_digit_doubled = []

card_number.each_with_index do |number, index|
  if index.even?
    every_other_digit_doubled << number.to_i * 2
   else
     every_other_digit_doubled << number.to_i
  end
end

p every_other_digit_doubled


digits_bigger_than_10 = []
every_other_digit_doubled.each do |number|
  if number > 9
    digits_bigger_than_10 << number.to_i - 9
   else
    digits_bigger_than_10 << number.to_i
  end
end

p digits_bigger_than_10


results_summed = digits_bigger_than_10.sum
puts results_summed


modulo_ten = results_summed.to_i % 10
 if modulo_ten == 0
    puts "The number is valid"
  else
    puts "The number is invalid"
 end
