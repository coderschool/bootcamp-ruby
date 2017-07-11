puts "Learning Hash Symbols"
todo_array = [
  {name: "learn numbers", done: true},
  {name: "learn strings", done: true},
  {name: "learn variables", done: true},
  {name: "learn if/end", done: false},
  {name: "learn arrays", done: true},
  {name: "learn methods", done: true},
  {name: "learn hash", done: false}
]

def display_todo(array)
  array.each do |item|
    if item[:done]
      puts "[x] " + item[:name]
    else
      puts "[ ] " + item[:name]
    end 
  end
end 

def display_done(array)
  array.each do |item|
    if item[:done]
      puts "[DONE] " + item[:name]
    end 
  end 
end 

def display_undone(array)
  array.each {|item| puts("[TODO] " + item[:name]) unless item[:done]}
end 

display_todo(todo_array)

puts "DISPLAY: DONE"
display_done(todo_array)

puts "DISPLAY: UNDONE"
display_undone(todo_array)

@todo = todo_array
puts "CHANGES!"