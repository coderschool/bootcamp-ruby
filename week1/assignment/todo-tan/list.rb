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

  def remove_at(index)
    @items.delete_at(index)
  end

  def remove_by_name(name)
    @items.delete_if {|item| item.name == name}
  end

  def mark_done_at(index)
    @items[index].mark_done!
  end

  def find_index_by_name(name)
    items.index {|item| item.name == name}
  end

  def done_items
    @items.select { |item| item.done? }
  end

  def undone_items
    @items.reject { |item| item.done? }
  end


  def display_done
    puts "Displaying DONE items:"
    @done_items.each_with_index do |item, index|
        puts "#{index + 1}. [x] #{item.name}"
    end
  end

  def display_undone
    puts "Displaying UNDONE items:"
    @undone_items.each_with_index do |item, index|
        puts "#{index + 1}. #{item.display}"
    end 
  end

  def display
    puts "Displaying #{@name}'s items:"
    @items.each_with_index do |item, index|
       puts "#{index + 1}. #{item.display}"
    end 
  end

  def to_string
    @items.map{|item| item.display}.join("\n")
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