# read data from todo.md
# create a list of todo items
# [
#  Item(@name: "Learn Numbers", @done: false)
#  Item(@name: "Learn Strings", @done: true)
# ]
require_relative "item"
require_relative "list"
require 'colorize'

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
    puts "Welcome to Todo App!"
    @list.display_as_table
  end

  def prompt 
    puts "Available commands:"
    puts "+ <text>: add an item"
    puts "x <number>: complete item at index #number"
    puts "- <number>: remove item at index #number"
    print "What would you like to do? (+, x, -) "
    answer = gets.chomp
    case answer
    when "exit", "quit"
      puts "Goodbye!"
      "exit"
    when /^\+/ # start with "+ <item name>"
      name = answer[1..-1].strip
      if name.empty?
        puts "Cannot add a blank item"
      else
        @list.add Item.new(name.capitalize)
      end
    when /^x/ # start with "x <item number>"
      index = answer[1..-1].strip.to_i - 1
      if index >= 0
        puts "Completed item at ##{index}"
        @list.complete_at!(index)
      else
        puts "Invalid index: #{index}"
      end
    when /^-/ # start with "- <item number>"
      index = answer[1..-1].strip.to_i - 1
      if index >= 0
        puts "Removed item at ##{index}"
        @list.remove_at!(index)
      else
        puts "Invalid index: #{index}"
      end

    when /\s*\d+\s*/ # only number: we toggle it
      index = answer.strip.to_i - 1
      if index >= 0
        puts "toggling at index #{index}".colorize(:blue)
        @list.toggle_at!(index)
      else
        puts "Unknown index: #{answer}".colorize(:red)
      end
    else
      puts "Unknown command: #{answer}".colorize(:red)
    end
  end

  # convert all the items into a single string
  # then save that string to the file
  def save!
  end
end

@todo = Todo.new
@todo.display
loop do 
  if @todo.prompt == "exit"
    @todo.save!
    break
  end
  @todo.display
end