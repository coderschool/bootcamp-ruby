 # Numbers: Fixnum (1, 3, 9) & FLoat (10.0, 10.1, ...)
 # String
 # puts
 # gets
 
 a = [11, 22, 33, 44, 55, 66, 77]
 puts a
 p a
 puts "My array a is: #{a}"
 
 puts "hello"
 p "hello"
 b = 123456 / 123
 
 puts "yay im done"
 
# total = 1 + 2 + 3 + 4 + 5 + 6 + 7
total = a[0] + a[1] + a[2] + a[3] + a[4] + a[5] + a[6]
 puts "total in #{a} is #{total}"
 
# array
# - a bunch of elements
# - each element can be anything (number, string)

numbers = [1, 4, 9, 16]

# LOOPing in an array
numbers.each do |element|
  puts "current element is: #{element}" 
end

empty = []
empty.each do |e|
  puts "current: #{e}"
end

small_array = [1000]
small_array.each do |e|
  puts "checking e: #{e}"
end

my_total = 0
puts "total of #{numbers} = ..."
numbers.each do |e|
  my_total = e + my_total
  puts "added #{e}. new my_total is #{my_total}"
end
puts "my total = #{my_total}"