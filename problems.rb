

array = [1, 2, 3, 4, 5, 6, 7]
number = 8
(0..array.size).flat_map{|n| array.combination(n).to_a}.each do |ar|
  sum =  ar.inject {|memo, n| memo + n}
  puts ar.inspect if sum == number
end




puts "What character do you want to make the pyramid out of?"
character = gets.chomp

puts "How many rows of #{character}'s do you want?"
row_count = gets.chomp.to_i

character_count = 1
width = 100

row_count.times do
  puts (character * character_count).center(width)
  character_count += 2
end