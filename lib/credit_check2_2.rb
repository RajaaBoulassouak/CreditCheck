class CreditCheck

  def card_number_to_string(card_number)
    @card_number = card_number
    card_number.to_s.chars
  end


  def double_digits(card_number_array)
    every_other_digit_doubled = []
    card_number_array.each_with_index do |number, index|
      if index.even?
        every_other_digit_doubled << number.to_i * 2
       else
         every_other_digit_doubled << number.to_i
      end
    end
    every_other_digit_doubled
  end


   def bigger_10_digits(card_number_array)
    digits_bigger_than_10 = []
    card_number_array.each do |number|
      if number > 9
        digits_bigger_than_10 << number.to_i - 9
       else
        digits_bigger_than_10 << number.to_i
      end
    end
   digits_bigger_than_10
  end


  def summed_results(card_number_array)
    results_summed = card_number_array.sum
  end


  def valid_number?(card_number_array)
    card_number_array = card_number_array % 10 #with or without to_i ?
    if card_number_array == 0
      return "true"
     else
      return "false"
    end
  end


  def validation_output(card_number_result)
     if card_number_result == true
        return "The number #{@card_number} is valid"
      else
        return "The number #{@card_number} is invalid"
     end
   end
end


credit_check = CreditCheck.new
p credit_check

card_number = 12345678901234



card_number_array = credit_check.card_number_to_string(card_number)
p card_number_array
card_number_array = credit_check.double_digits(card_number_array)
p card_number_array
card_number_array = credit_check.bigger_10_digits(card_number_array)
p card_number_array
card_number_array = credit_check.summed_results(card_number_array)
p card_number_array
card_number_result = credit_check.valid_number?(card_number_array)
p card_number_result
card_number_result = credit_check.validation_output(card_number_result)
p card_number_result
