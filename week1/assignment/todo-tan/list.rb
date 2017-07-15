require_relative "item"

class List
  attr_accessor :name
  attr_accessor :items

  def initialize(name, items = [])
    @name = name
    @items = items
  end

  def add(item)
    @items << item
  end

  def display_done
    puts "Displaying DONE items:"
    @items.each do |item|
      if item.done?
        puts "[x] #{item.name}"
      end
    end
  end

  def display_undone
    puts "Displaying UNDONE items:"
    @items.each do |item|
      unless item.done?
        item.display
      end
    end 
  end

  def display
    puts "Displaying #{@name}'s items:"
    @items.each do |item|
        item.display
    end 
  end
end

@item1 = Item.new("Learn Numbers")
@item2 = Item.new("Learn Strings")
@item3 = Item.new("Learn Variables")
@item4 = Item.new("Learn Methods")
@item5 = Item.new("Learn Class")
@item6 = Item.new("Pay tuition", true)

@today = List.new("Today's list", [@item1, @item2, @item3, @item4, @item5])
@today.add(@item6)