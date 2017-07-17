puts "Hey I am in test"

require 'colorize'
puts "This should be blue".colorize(:blue)
puts "Available colors: #{String.colors}"