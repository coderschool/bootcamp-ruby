class Item
  attr_accessor :name

  def initialize(name, done = false)
    @name = name
    @done = done
  end
  
  def done?
    @done
  end
  
  def mark_done!
    @done = true
  end
  
  def display
    "- [#{ done? ? 'x' : ' ' }] #{ @name }"
  end
  
  # HINT: this method is written for you, but you can understand it
  def self.new_from_line(line)
    name = line[6..-1]
    done = line[3] == "x"
    Item.new(name, done)
  end
end

