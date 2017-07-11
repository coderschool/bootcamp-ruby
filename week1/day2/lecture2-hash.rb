# HASH 

# Array
todo = [
  "learn numbers", 
  "learn strings",
  "learn variables",
  "learn if/end",
  "learn methods",
  "learn arrays",
  "learn hash"
  ]

todo.each_with_index do |item, i|
  puts "#{i + 1}. #{item}"
end

def print_seperator(word)
  puts "=" * 10 + " #{word} " + "=" * 10
end 

done = [
  true, 
  true,
  true,
  false, 
  true, 
  true,
  false 
]

# 0: "learn numbers" => "[x] learn numbers"
# ...
# 3: "learn if/end"  => "[ ] learn if/end"

todo_display = todo.map.with_index do |item, index|
  if done[index]
    "[x] " + item 
  else 
    "[ ] " + item 
  end 
end 

puts todo_display

todo_hash = [
  {"name" => "learn numbers", "done" => true},
  {"name" => "learn strings", "done" => true},
  {"name" => "learn variables", "done" => true},
  {"name" => "learn if/end", "done" => false},
  {"name" => "learn arrays", "done" => true},
  {"name" => "learn methods", "done" => true},
  {"name" => "learn hash", "done" => false}
]

print_seperator("HASH!!!")
todo_hash.each do |item|
  if item["done"]
    puts "[x] " + item["name"]
  else 
    puts "[ ] #{item["name"]}"
  end 
end

item = {"name" => "learn numbers", "done" => true}
# Hash#each
item.each do |key, value| 
  puts "key: #{key}, value: #{value}"
end

adele  = {"name" => "adele", "age" => 29}
bieber = {"name" => "bieber", "age" => 23}

def older_artist(first, second)
  if first["age"] > second["age"]
    first
  else 
    second
  end 
end 

older = older_artist(adele, bieber)
puts "older artist: #{older["name"]}" #=> adele 
puts "how old? #{older["age"]}"




