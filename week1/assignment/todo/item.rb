class Item 
  attr_accessor :name

  def initialize(name, done = false)
    @name = name
    @done = done
  end

  def done
    @done 
  end

  def done=(value)
    @done = value
  end

  def done?
    @done == true
  end
end

