require_relative "item"

class List
  attr_reader :lines
  
  def initialize(filename = "todo.md")
    @lines = File.read(filename).split("\n")
  end

  def display_html
    html = "<ul>"
    @lines.each do |line|
      html << Item.new_from_line(line).display_html
    end
    html << "</ul>"
  end
end