my_number = rand(10)+1

while(true)
  puts "Guess a number, from 1 to 10:"
  line = gets.chomp.to_i
  break if (line == my_number)
  puts "#{line} is not the right answer :("
end

puts "congrats m8, #{my_number} is right!"