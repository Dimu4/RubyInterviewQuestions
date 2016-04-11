require 'test/unit'

class FindSumOfElements < Test::Unit::TestCase

# Given an array of integers,
# find two numbers such that they add up to a specific target number.

def find_numbers_sum target_number
  result = []
  array = [1, 2, 3, 4, 5, 6, 7]
  number = target_number

  (0..array.size).flat_map{|n| array.combination(n).to_a}.each do |ar|
    sum =  ar.inject {|memo, n| memo + n}
    result << ar.inspect if sum == number
  end
  result
end

def test_sum
  p find_numbers_sum 8
end

end