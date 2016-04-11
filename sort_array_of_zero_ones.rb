require 'test/unit'

class SortArrayOfZeroOnes < Test::Unit::TestCase

  # sort binary array without sort API
  def sort_binary array
    sum = 0
    array.each { |element | sum+=element }

    array_of_ones = Array.new(array.size, 1)
    zeros = (array.size - sum).to_i
    0..zeros.times do |element|
      array_of_ones[element] = 0
    end

    array_of_ones
  end

  def simple_sort array
    array.each_with_index do |element, index|
      if element == 0
        array.insert(0, array.delete_at(index))
      end
    end
    array
  end

  # p sort_binary [0,1,0,0,0,0,1,1,0,1,1]
  def test_binary_sort
    assert_equal(sort_binary([0,1,0,0,0,0,1,1,0,1,1]), [0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1])
  end

  def test_simple_sort
    assert_equal(simple_sort([0,1,0,0,0,0,1,1,0,1,1]), [0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1])
  end

end