puts "Gimme some data please"
text = gets.chomp

words = text.split
frequencies = Hash.new(0)
words.each { |word| frequencies[word] += 1 }
frequencies = frequencies.sort_by do |word, count|
    count
end
frequencies.reverse!
frequencies.each { |word, frequency| puts word + " " + frequency.to_s }
