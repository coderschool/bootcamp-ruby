class Item
  attr_accessor :name, :done, :idx

  def initialize(name, idx, done = "undone")
    @name = name
    @idx = idx
    @done = done
  end

  def self.new_from_line(line, idx)
    name = line[4..-1]
    status = line[1] == "x" ? "done" : "undone"
    index = idx
    
    Item.new(name, index, status)    
  end

  def mark_done! 
    @done = "done"
  end

  def toggle!
    if @done == "undone"
      @done = "done"
    else
      @done = "undone"
    end
  end

  def done?
    @done == "done"
  end
end
