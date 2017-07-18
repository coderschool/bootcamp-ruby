require_relative "item"

class List
  attr_reader :lines, :items
  
  def initialize(filename = "todo.md")
    @filename = filename
    @lines = File.read(filename).split("\n")
    @items = @lines.map {|line| Item.new_from_line(line)}
  end

  # def display_html
  #   html = "<ul>"
  #   @lines.each do |line|
  #     html << Item.new_from_line(line).display_html
  #   end
  #   html << "</ul>"
  # end

  # def mark_done_at(index)
  #   items[index].mark_done!
  # end

  def find_and_mark_done(name)
    item = items.find{|e| e.name == name}
    puts "finding |#{name}|"
    if item
      item.mark_done!
    else
      puts "item not found: #{name}"
    end
  end

  def find_and_undo(name)
    item = items.find{|e| e.name == name}
    if item
      item.mark_undone!
    else
      puts "item not found: #{name}"
    end
  end

  def add(name)
    @items << Item.new(name.capitalize)
  end

  def save!
    File.write(@filename, @items.map(&:display_line).join("\n"))
  end

  def sorted_items
    items.sort_by {|e| e.done? ? 1 : 0}
  end
end