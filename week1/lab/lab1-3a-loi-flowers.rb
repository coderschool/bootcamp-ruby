puts "\nMilestone B1 - Class Readers/Writers/Accessors"
puts "-". * 75

class Flower
  attr_accessor :price

  def initialize(name, color)
    @name = name
    @color = color 
  end

  def to_sentence
    "#{@name} are #{@color}"
  end  

  def compare(another_flower)
    @price > another_flower.price ? "Yup, I am more expensive." : "Hey I am cheaper!"
  end  
end

class Bouquet
  attr_reader :flowers
  
  def initialize(flowers = [])
    @flowers = flowers
  end
  
  def add(flower)
    @flowers << flower 
  end
end

my_flower = Flower.new("Roses", "red")
my_flower.price = 10
your_flower = Flower.new("Violets", "blue")
your_flower.price = 11

puts my_bouquet = Bouquet.new # this will set the list of flowers to be empty
puts "Flowers that I have: #{my_bouquet.flowers}" # this will print:"Flowers that I have: []"

# now let's add more flowers to our bouquet
puts my_bouquet.add(my_flower)
puts my_bouquet.add(your_flower)

# now check that you have two flowers
puts "Flowers now: #{my_bouquet.flowers}"

# OF COURSE, we can start a new bouquet with more than 0 flowers
puts coderschool_bouquet = Bouquet.new([my_flower, your_flower])
