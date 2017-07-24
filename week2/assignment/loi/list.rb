require_relative 'item'

class List
  attr_accessor :items

  def initialize(filename = "todo.data")
    data = File.read(filename)
    @items = []
    data.split("\n").each_with_index do |line, idx|
      @items << Item.new_from_line(line, idx)
    end
  end

  def hash_to_object(hash)
    hash.map do |item|
      Item.new(item[:name], nil, item[:done])
    end
  end
end

