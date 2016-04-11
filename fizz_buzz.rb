require 'test-unit'

class FizzBuzz < Test::Unit::TestCase
  def fizzbuzz(number)

    number.times do |num|
      word = ""
      if (num % 3  == 0)|| (num % 5  == 0)

        if num % 3  == 0
          word += "Fizz"
        end

        if num % 5  == 0
          word += "Buzz"
        end

        puts word

      else
        puts num
      end
    end
  end


  def test_fizz_buzz
    puts fizzbuzz 20
  end

end