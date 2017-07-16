class Item 
  attr_accessor :name

  def initialize(name, done = false)
    @name = name
    @done = done
  end

  def mark_done!
    @done = true
  end

  def done?
    @done
  end

  def display
    if done?
      "- [x] #{item.name}"
    else
      "- [ ] #{item.name}"
    end
  end

  # Parsing each line into an item. Example: 
  # Item.new_from_line("- [ ] Learn Ruby") ==> Item.new("Learn Ruby", false)
  def self.new_from_line(line)
    new(line[6..-1], line[3] == "x")
  end
end