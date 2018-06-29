require "./lib/credit_check2_2.rb"
require 'minitest/autorun'
require 'minitest/pride'

class CreditCheckTest < Minitest::Test
  def test_it_exists
    credit_check = CreditCheck.new
    assert_instance_of CreditCheck, credit_check
  end

  def test_card_number_string
    credit_check = CreditCheck.new
    result = credit_check.card_number_to_string(123456)
    assert_equal ["1", "2", "3", "4", "5", "6"], result
  end

  def test_double_digits
    credit_check = CreditCheck.new
    result = credit_check.double_digits(["1","2","3","4"])
    assert_equal [2,2,6,4], result
  end

  def test_bigger_10_digits
    credit_check = CreditCheck.new
    result = credit_check.bigger_10_digits([10,6,14])
    assert_equal [1,6,5], result
  end

  def test_summed_results
    credit_check = CreditCheck.new
    result = credit_check.summed_results([10,10])
    assert_equal 20, result
  end

  def test_valid_number?
    credit_check = CreditCheck.new
    result = credit_check.valid_number?(50)
    assert_equal "true", result
  end

  def test_validation_output
    credit_check = CreditCheck.new
    result = credit_check.validation_output(true)
    assert_equal "The number #{} is valid", result
  end

end
