students = ["Luis", "Quy", "Stan"]

puts students

students.each do |s|
  puts "Student: #{s}"
end

student_age = [21, 32, 18]

new_student = "Phu"

puts "BEFORE: #{students}"
students << new_student
puts "AFTER adding #{new_student}: #{students}"

another = "Quoc"
students.push(another)
puts "AFTER adding #{another}: #{students}"

new_group = ["Senay", "Yen"]
# OPTION 1
# new_group.each do |s| 
#   students << s 
# end 

all_students = students + new_group 

puts "all students: #{all_students}"

# MILESTONE B

puts "Task 1 & 2: print numbers"
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.each do |e|
  puts "element: #{e}"
end

puts "Task 3: only print > 5"
numbers.each do |e|
  if e > 5
    puts e 
  end 
end 

puts "Task 4: add 11 to numbers:"
numbers << 11
puts "numbers is now: #{numbers}"

puts "Task 5: print last element; print array in reverse"
puts "Last element: #{numbers.last}"
puts "Reverse: #{numbers.reverse}"

puts "Task 6: big numbers"
big_numbers = [100, 200, 300, 400, 50]

all_numbers = numbers + big_numbers

puts "all numbers: #{all_numbers}"
puts "all numbers, largest first: #{all_numbers.sort.reverse}"