puts "Milestone B1 - Arrays of Numbers"

puts "1. Define numbers to be an array of numbers from 1 to 10."
# numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers = (1..10).to_a
puts "numbers: #{numbers}"

puts "2. Use the each method of numbers to print numbers from 1 to 10."
numbers.each do |e|
  puts "e: #{e}"
end

puts "3. Use the each method on an array of numbers from 1 to 10 and only print numbers that greater than 5."
numbers.each do |e|
  puts ">5: #{e}" if e > 5
end

# 4. Add 11 to the end of the original array numbers
numbers << 11
puts "add 11 to the end: #{numbers}"

# 5. How do you return the last element in an array? How do you reverse the order of the array so that you get [11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]?
puts "Last element: #{numbers.last}"
puts "Reverse: #{numbers.reverse}"

# 6. Create an array big_numbers with numbers 100, 200, 300, 400
big_numbers = [100, 200, 300, 400]
puts "big_numbers: #{big_numbers}"

# 7. Add two arrays together to become all_numbers to have a list of more numbers.
all_numbers = big_numbers + numbers
puts "all_numbers = #{all_numbers}"

# 8. Sort the array so you get the largest numbers first, smallest number last. (HINT: google "ruby sort array")
sorted_numbers = all_numbers.sort
puts "sorted, small first: #{sorted_numbers}"
puts "sorted, largest first: #{sorted_numbers.reverse}"

# 400, 300, 200, 100, 11, 10, 9, ...

# Bonus:

# 1. How do you get the middle of the array? For [11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1] you should get 6 (let's assume that there is always an odd number of elements in our array). 
middle = numbers[numbers.length / 2]
puts "middle element of #{numbers}: #{middle}"
# 2. How do you find the biggest number in the array? The smallest?
puts "biggest: #{numbers.max}"
puts "smallest: #{numbers.min}"
puts "\n3. Use the each method in the array of numbers and only print out the even numbers."
numbers.each {|e| puts e if e % 2 == 0}
puts "\n4. Use the each method in the array of numbers and only print out the odd numbers."
numbers.each {|e| puts e if e % 2 == 1}

