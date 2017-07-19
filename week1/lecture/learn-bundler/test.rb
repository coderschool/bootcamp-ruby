# something smilar to 'bundle console'
# require 'colorize'
# require 'terminal-table'
require 'rubygems'
require 'bundler/setup'
Bundler.require

puts "Hey I am in test"

puts "This should be blue".colorize(:blue)
puts "Available colors: #{String.colors}"

rows = []
rows << ['One'.colorize(:blue), "1".colorize(:red)]
rows << ['Two', 2.to_s.colorize(:red)]
rows << ['Three', 3]

table = Terminal::Table.new(rows: rows)
puts table