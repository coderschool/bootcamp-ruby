puts "Milestone A:"
puts "[x] Show me that you can run code directly like this"

todo = [
  {name: "learn hash", priority: 5},
  {name: "learn symbol", priority: 2},
  {name: "learn sort", priority: 1}
]

sorted_todo = todo.sort {|x, y| x[:priority] <=> y[:priority] }
puts "todo:"
puts todo
puts "\nsorted todo:"
puts sorted_todo

# ruby program
person = {name: "donald trump", age: 71}
puts "what do you want to know about this person? (name, age)"
key = gets.chomp
value = person[key]
puts "Ah, that is #{value}"

# ruby program
person = {name: "donald trump", age: 71, position: "POTUS"}
# person = {"name" => "donald trump", age: 71}

puts "what do you want to know about this person? (name, age)"
key = gets.chomp
value = person[key.to_sym]
puts "Ah, that is #{value}"

puts "what's your age"
age = gets.chomp 
age # => "71"
birth_year = 2017 - age.to_i
puts "ah, he was born in #{birth_year}"