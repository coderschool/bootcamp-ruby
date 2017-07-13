puts "Milestone B1 - Arrays of Numbers"

puts "1. Define numbers to be an array of numbers from 1 to 10."
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers_smart = (1..10).to_a
puts "numbers: #{numbers}"
puts "numbers_smart: #{numbers_smart}"

puts "2. Use the each method of numbers to print numbers from 1 to 10."
numbers.each do |item|
  puts "item: #{item}"
end

puts "3. Use the each method on an array of numbers from 1 to 10 and only print numbers that greater than 5."
numbers.each do |item|
  puts "> 5: #{item}" if item > 5
end

numbers.each do |item|
  if item < 5
    puts "if < 5: #{item}"
  end 
end



# 4. Add 11 to the end of the original array numbers
numbers.push(11)
puts "add 11 to numbers: #{numbers}"
numbers << 12
puts "add 12 to numbers: #{numbers}"

# 5. How do you return the last element in an array? How do you reverse the order of the array so that you get [11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]?

# 6. Create an array big_numbers with numbers 100, 200, 300, 400

# 7. Add two arrays together to become all_numbers to have a list of more numbers.

# 8. Sort the array so you get the largest numbers first, smallest number last. (HINT: google "ruby sort array")


# 400, 300, 200, 100, 11, 10, 9, ...

