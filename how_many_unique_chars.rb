require 'test-unit'

class HowManyUniqueChars < Test::Unit::TestCase
# count how many times each character appears in string
  def how_many_chars_counter string
    # declare empty hash
    letters_hash = Hash.new

    input = string.downcase.gsub(" ", "")
    # iterate through each character in String
    input.each_char do |letter|
      #check if letters_hash already has the character
      if letters_hash.has_key? letter
        # add + 1 counter if char is already exists
        letters_hash[letter]+=1
      else
        # add new char to hash and add value 1 to start counter
        letters_hash[letter]=1
      end
    end
    # return hash
    letters_hash
  end

  def test_unique_chars_in_string
    assert_equal(how_many_chars_counter("A bb"), {'a' => 1, 'b' => 2})
  end

end