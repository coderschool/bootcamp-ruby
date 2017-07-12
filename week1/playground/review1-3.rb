puts "hello"
a = 1
b = 2
puts a + b
todo = ["eat cereal", "go to class", "sit down in the back"]
puts "todo: #{todo}"

todo_new = [
  {name: "eat cereal", done: true},
  {name: "go to class", done: true},
  {name: "be on time", done: false},
  {name: "get lunch", done: false}
]

print "What's your name? "
name = gets.chomp
puts "Hello #{name.capitalize}. Welcome back!"