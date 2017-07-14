###################
# Task 1: define a class Flower that takes a name and a color
# - add a writer method to set price for that flower
###################

# NOTE: don't use attr_* stuff yet

class Flower
  # your code here
  # ...
  def initialize(name, color, price = nil)
    @name = name
    @color = color
    @price = price
  end

  def price=(value)
    @price = value
  end

  def price
    @price
  end
end

# TEST:

@my_flower = Flower.new("roses", "red")
@my_flower.price = 10

@your_flower = Flower.new("violets", "blue")
@your_flower.price = 11

# add your own tests
@my_flower.price = 20 #=> 20
puts "price should be 20: #{@my_flower.price}"
@your_flower.price += 100
puts "price should be 111: #{@your_flower.price}"


puts "###################"
puts "# Task 2: add a to_sentence method inside the class"
puts "# NOTE: you can \"open\" the class again and write def to_sentence inside it"
puts "###################"

class Flower
  def to_sentence
    # your code here
    # roses are 
    "#{@name} are #{@color}"
  end
end

puts "should be tulips are purple: " + Flower.new("tulips", "purple").to_sentence
puts "should be RANDOM are NOTHING: " + Flower.new("RANDOM", "NOTHING").to_sentence


puts "###################"
puts "# Task 3: write a compare method that takes another flower and compare"
puts "###################"

class Flower
  def compare(another_flower)
    # your code here
    if price > another_flower.price
      "Yup, I am more expensive."
    elsif price < another_flower.price
      "Hey I am cheaper!"
    else
      "Same price, but I'm prettier."
    end
  end
end

puts "Hey I am cheaper! == " + @my_flower.compare(@your_flower)
puts "Yup, I am more expensive. == " + @your_flower.compare(@my_flower) # => "Yup, I am more expensive."
puts "Same price, but I'm prettier. == " + @my_flower.compare(@my_flower)
puts "Same price, but I'm prettier. == " + @my_flower.compare(Flower.new("green species", "green", @my_flower.price))


class Bouquet
  def initialize(flowers = [])
    # your code here
  end
  
  def add(flower)
    # your code here
    # HINT: this updates your instance variable
    
    # puts "Great. Added #{flower.name} to the bouquet."
  end
  
  def flowers
    # your code here
    # HINT: this is a reader; return the instance variable
  end
end