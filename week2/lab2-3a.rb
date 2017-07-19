require "erb"

item = {name: "Learn ERB", difficulty: "Easy"}

template = "Task <%= item[:name] %> is <%= item[:difficulty] %>"

puts ERB.new(template).result(binding)