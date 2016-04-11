require 'test/unit'

class CheckPolindrome < Test::Unit::TestCase
  # reverse string
  def reverse_string input
    # declare empty string
    word = ""
    # char_array will now store array of characters
    chars_array = input.each_char.to_a
    # chars_array.pop will take a last element of array of chars and place it as first element into empty "word" string
    chars_array.size.times{word << chars_array.pop}
    # print out new reversed string
    word
  end

  def  palindrome? string
    # check if string has one or zero
    if string.length == 1 || string.length == 0
      true
    else
      # check if input equals to its reverse option
      string == reverse_string(string)
    end
  end

  # advance solution
  def palindrome_recursion?(string)
    if string.length == 1 || string.length == 0
      true
    else
      if string[0] == string[-1]
        palindrome_recursion?(string[1..-2])
      else
        false
      end
    end
  end

  def test_reverse_string
    assert_equal(reverse_string("Hello"), "olleH")
  end

  def test_palindrome
    assert_true(palindrome?("racecar"), true)
  end

  def test_palindrome_recursively
    assert_true(palindrome_recursion?("racecar"), true)
  end

end


#   #reverse words in string
#
#   def reverse_words input
#     word = ""
#     words = input.split(" ")
#     words.each do |element|
#         word << "#{reverse(element)} "
#     end
#     puts word
#   end
#
#   reverse_words "Hello World"
#
# #  # count how many times unique character appears in the string
# def how_many_chars( string, char)
#   counter = 0
#   string.each_char.to_a.each do |letter|
#     counter+=1 if letter == char
#   end
#   counter
# end
#
#   puts how_many_chars("ababaaaac", "a")
