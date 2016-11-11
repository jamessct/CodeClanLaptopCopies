puts "Enter a bunch of words plz"
text = gets.chomp
puts "What would you like to redact?"
redact = gets.chomp

words = text.split " "

words.each do |word|
    print words
      if words = redact
        print "REDACTED"
      else print word + " "
    end
end
