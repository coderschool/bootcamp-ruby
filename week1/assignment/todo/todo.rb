# read data from todo.md
# create a list of todo items
# [
#  Item(@name: "Learn Numbers", @done: false)
#  Item(@name: "Learn Strings", @done: true)
# ]
require_relative "item"
require_relative "list"

class Todo
  attr_accessor :lines, :list

  def initialize
    @list = List.new("Today")
    @lines = File.read("todo.md").split("\n")
    @lines.each do |line|
      # "- [ ] Learn Numbers"
      @list.add(Item.new_from_line(line))
    end
  end

  def display
    puts "Display Todo items:"
    @list.display
  end

  def prompt 
    puts "Enter the item number to mark as done"
    grandma_index = gets.chomp
    if grandma_index == "exit"
      puts "Goodbye!"
      "exit"
    else
      puts "Okay, I marked index #{grandma_index} as done"
      @list.complete_at!(grandma_index.to_i - 1)
      display
    end
  end
end

@todo = Todo.new
@todo.display
loop do 
  break if @todo.prompt == "exit"
end