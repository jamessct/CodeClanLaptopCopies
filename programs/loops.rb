# chickens = ["Margaret", "Hetty", "Audrey", "Mabel", "Henrietta"]

# puts chickens[0]
# puts chickens[1]
# puts chickens[2]
# puts chickens[3]

# for chicken in chickens
#   puts chicken
# end

# favourite_films = {
#   dazed_and_confused: 10,
#   alladin: 9,
#   chalet_girl: 8
# }

# for key, value in favourite_films
#   puts "#{key}: #{value}"
# end

# number = 0
# target = 5

# while(number < target) do
#   puts "number is #{number}"
#   number += 1
# end

while (true) do
  puts "type something"
  line = gets.chomp()
  break if (line == "q")
  puts " you typed #{line}"
end
