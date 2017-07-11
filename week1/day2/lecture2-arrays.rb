# Array
todo = [
  "learn numbers", 
  "learn strings",
  "learn variables",
  "learn if/end",
  "learn methods",
  "learn arrays"]

todo.each_with_index do |item, i|
  puts "#{i + 1}. #{item}"
end

def print_seperator(word)
  puts "=" * 10 + " #{word} " + "=" * 10
end 

print_seperator("reverse")

todo.reverse.each_with_index {|item, i| puts "#{i + 1}. #{item}" }

print_seperator("sort")
todo.sort.each_with_index {|item, i| puts "#{i + 1}. #{item}" }

print_seperator("shuffle")
todo.shuffle.each_with_index {|item, i| puts "#{i + 1}. #{item}" }

# .each # => returns the same array
# .reverse # => returns a different array
# .shuffle


# .map
a = [1, 2, 3] #=> [1, 4, 9]
# [1, 2, 3] #=> [1*1, 2*2, 3*3]

print_seperator("map")
puts "a: #{a}"
b = []
a.each do |item|
  puts "item: #{item}, item * item: #{item * item}"
  b << item * item 
end 

c = a.map {|item| item * item }
d = a.map {|item| item * 10 }

# a: [1, 2, 3] # => [1 * 10, 2 * 10, 3 * 10]
# d: [10, 20, 30]

puts "b: #{b}"
puts "c: #{c}"
puts "d: #{d}"
#     5
# +------+
# |      | 5
# | 25   |
# +------+

cap_todo = todo.map {|item| item.capitalize}
# todo: ["learn numbers", "learn strings"]
# cap_todo: ["Learn numbers", "Learn strings"]

puts "cap todo: #{cap_todo}"

todo_display = todo.map{|item| "[ ] " + item}
# todo: ["learn numbers", "learn strings"]
# todo_display: ["[ ] learn numbers", "[ ] learn strings"]

puts todo_display


#   [1  ,   2,   3] # => first
# + [100, 200, 300] # => second 
# = [101, 202, 303] # => total 

first = [1, 2, 3]
second = [100, 200, 300]

total = first.map.with_index {|item, index| item + second[index]}

puts "total: #{total}"

[1, 2, 3]
[100, 200, 300]
[[1, 100], [2, 200], [3, 300]]
[1 + 100, 2 + 200, 3 + 300]

p first.zip(second).map{|item| item[0] + item[1] }


# HASH 
