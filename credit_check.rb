card_number = "4929735477250543".chars


numbers = card_number.map.each_with_index do |number, index|
 if index.even?
  number.to_i * 2
 else
   number.to_i
 end

end

numbers_2 = numbers.map.each do |number|
  if number > 9
    number.to_i - 9
  else
    number
  end

end

p numbers_2





# index = 2
# card_number.map.with_index {}
#
#
#
# # 2 * every other digit: 8 9 4 9 14 3 10 4 14 7 4 5 0 5 8 3
# Summed digit > 10:     8 9 4 9  5 3  1 4  5 7 4 5 0 5 8 3
# Results summed:        = 80
# Modulo Ten:            80 % 10 == 0

# Modulo Ten == "total.to_i / 10"

# if Modulo Ten == 0
#    puts "The number is valid"
#  else
#    puts "The number is invalid"
# end
