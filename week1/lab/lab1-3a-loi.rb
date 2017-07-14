puts "\nMilestone A-1: Classy with Class"
puts "-". * 75
class Flower
  def initialize(name, color)
    @name = name
    @color = color 
  end

  def price=(value)
    @price = value
  end

  def price 
    @price
  end
end

# TEST:
puts my_flower = Flower.new("roses", "red")
puts my_flower.price = 10

puts your_flower = Flower.new("violets", "blue")
puts your_flower.price = 11

puts "\nMilestone A-2: add a to_sentence method inside the class"
puts "-". * 75

class Flower
  def to_sentence
    "#{@name} are #{@color}"
  end
end

# TEST:
puts my_flower.to_sentence # => "roses are red"
puts your_flower.to_sentence # => "violets are blue"

puts "\nMilestone A-3: write a compare method that takes another flower and compare"
puts "-". * 75

class Flower
  def compare(another_flower)
    @price > another_flower.price ? "Yup, I am more expensive." : "Hey I am cheaper!"
  end
end

# TEST:
puts my_flower.compare(your_flower) # => "Hey I am cheaper!"
puts your_flower.compare(my_flower) # => "Yup, I am more expensive.

puts "\nMilestone A-4: implement a Bouquet class that takes a list of flowers"
puts "add a add method that add a flower to the a list of flowers"
puts "-". * 75

class Bouquet
  def initialize(flowers = [])
    @flowers = flowers
  end
  
  def add(flower)
    @flowers << flower 
  end
  
  def flowers
    @flowers
  end
end

puts my_bouquet = Bouquet.new # this will set the list of flowers to be empty
puts "Flowers that I have: #{my_bouquet.flowers}" # this will print:"Flowers that I have: []"

# now let's add more flowers to our bouquet
puts my_bouquet.add(my_flower)
puts my_bouquet.add(your_flower)

# now check that you have two flowers
puts "Flowers now: #{my_bouquet.flowers}"

# OF COURSE, we can start a new bouquet with more than 0 flowers
puts coderschool_bouquet = Bouquet.new([my_flower, your_flower])


puts "\nMilestone B1 - Class Readers/Writers/Accessors"
puts "-". * 75