class List 
  attr_accessor :items, :name

  def initialize(name, items = [])
    @name = name
    @items = items
  end

  def add(item)
    @items << item
  end

  def done_items
    @items.select(&:done?)
  end

  def undone_items
    @items.reject(&:done?)
  end

  def complete_at!(index)
    @items[index].mark_done!
  end

  def display
    puts "## List: #{name} ##"
    @items.each_with_index do |item, index|
      if item.done?
        puts "- [x] #{item.name} (#{index+1})"
      else
        puts "- [ ] #{item.name} (#{index+1})"
      end
    end
  end

  def display_done
    done_items.each_with_index do |item, index|
      puts item.display + " (#{index + 1})"
    end
  end
end

# @item1 = Item.new("Learn Numbers")
# @item2 = Item.new("Learn Strings")
# @item3 = Item.new("Learn Variables")
# @item4 = Item.new("Learn Methods")
# @item5 = Item.new("Learn Class")
# @item6 = Item.new("Pay tuition", true)

# @today = List.new("Today", [@item1, @item2, @item3, @item4, @item5])
# @today.add(@item6)

# @today.display