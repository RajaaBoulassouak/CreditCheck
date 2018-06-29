card_number = "4929735477250543".chars

numbers = card_number.map.each_with_index do |number, index|
 if index.even?
    number.to_i * 2
  else
    number.to_i
 end
end

p numbers


numbers_2 = numbers.map.each do |number|
  if number > 9
    number.to_i - 9
   else
    number
  end
end

p numbers_2


results = numbers_2.sum
puts results


modulo_ten = results.to_i % 10
 if modulo_ten == 0
    puts "The number is valid"
  else
    puts "The number is invalid"
 end
