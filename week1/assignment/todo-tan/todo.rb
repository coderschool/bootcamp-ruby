require_relative "list"

class Todo
  def initialize(filename = "todo.md")
    @filename = filename
    @list = List.new("Today")
  end

  def list
    @list
  end

  def load_data
    file = File.read(@filename)
    lines = file.split("\n")
    lines.each do |line|
      @list.add(Item.new_from_line(line))
    end
  end

  def show_all
    @list.display
  end
end