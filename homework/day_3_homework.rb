A)

#1. Work out how many stops there are in the current west array
lines.count
lines.length
lines.size

#2. Return 'Edinburgh Park' from the array
puts lines[1]
lines.at(1)

#3. How many ways can we return 'Princes Street' from the array?
print lines[4]
puts lines[4]
puts lines.last
lines.slice(4)
lines.take(4)
lines[-1]
lines.pop #Will remove from the array

#4. Work out the index position of 'Haymarket'
lines.index("Haymarket")

#5. Add 'Airport' to the start of the array
lines.unshift[0] = "Airport"

#6. Add 'York Place' to the end of the array
lines[5] = "York Place"
lines.push = "York Place"

#7. Remove 'Edinburgh Park' from the array using it's name
lines.delete("Edinburgh Park")

#8. Delete 'Edinburgh Park' from the array by index
lines.delete_at(1)

#9. Reverse the positions of the stops in the array
lines.reverse!

#10. Print out all of the stops using a for loop and a while loop
for elements in lines
  puts elements
end

# B)

# 1. How would you return the string "One"?
my_hash[1]

# 2. How would you return the string "Two"?
my_hash[:two]

# 3. How would you return the number 2?
my_hash["two"]

# 4. How would you add {3 => "Three"} to the hash?
my_hash[3] = "Three"

# 5. How would you add {:four => 4} to the hash?
my_hash[:four] = 4

C)

# 1. Return Jonathan's Twitter handle (i.e. the string "jonnyt")
users["Jonathat"][:twitter]

# 2. Return Erik's hometown
users["Erik"][:hometown]

# 3. Return the array of Erik's favorite numbers
users["Erik"][:favourite_numbers]

# 4. Return the type of Avril's pet Colin
users["Avril"][:pets]["colin"]

# 5. Return the smallest of Erik's favorite numbers
users["Erik"][:favourite_numbers].min

# 6. Return an array of Avril's favorite numbers that are even
# for loop, using .even? method

# 7. Return an array of Jonathans favourite numbers, sorted in ascending order and excluding duplicates
#use .uniq method to exclude duplicates

# 8. Add the number 7 to Erik's favorite numbers
#.push

# 9. Change Erik's hometown to Edinburgh

# 10. Add a pet dog to Erik called "Fluffy"

# 11. Add yourself to the users hash


