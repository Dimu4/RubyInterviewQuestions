require 'test-unit'

class MaxDifference < Test::Unit::TestCase
  def max_difference array_of_integers
    if array_of_integers.size > 1
      index_of_max = find_index_of_max(array_of_integers); #first need to find the index of max element

      min_before_max = find_min_before_max(array_of_integers, index_of_max); #then need to find the min element which has index less then index of max
      result = array_of_integers[index_of_max] - min_before_max;
    else
      result = 0 if array_of_integers.size == 0
      result = array_of_integers[0] if array_of_integers.size == 1
    end
    result
  end

  def find_index_of_max array_of_integers
    index_of_max = 0
    max = array_of_integers[0]
    array_of_integers.each_with_index do |element, index|
      if element > max
        max = array_of_integers[index]
        index_of_max = index
      end
    end
    index_of_max
  end

  def find_min_before_max(array_of_integers, index_of_max)
    min = array_of_integers[0]
    (1..index_of_max).each do |index|
      if array_of_integers[index] < min
        min = array_of_integers[index]
      end
    end
    min
  end

  def test_max_diff
    assert_equal(max_difference([7, 3, 23, 2, 4, 12, 1]), 20)
  end

  def test_max_diff_one_value
    assert_equal(max_difference([1]), 1)
  end

  def test_empty_array
    assert_equal(max_difference([]), 0)
  end
end