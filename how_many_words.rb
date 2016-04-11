require 'test/unit'

class HowManyWords < Test::Unit::TestCase
  # count how many words in sentence
  def break_sentence sentence
    # declare new Hash
    counter = Hash.new

    # break sentence to array of words and omit all special chars and spaces
    array_words = sentence.downcase.gsub("\\W", "").split(" ")

    # iterate trough each word and count
    array_words.each do |element|
      if counter.has_key? element
        counter[element]+=1
      else
        counter[element]=1
      end
    end
    # return hash
    counter
  end



  def test_how_many_unique_words
    assert_equal(break_sentence("Sunny sunny day"), {'sunny' => 2, 'day' => 1})
  end

end