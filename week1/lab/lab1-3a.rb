###################
# Task 1: define a class Flower that takes a name and a color
# - add a writer method to set price for that flower
###################

# NOTE: don't use attr_* stuff yet

class Flower
  def initialize(name, color)
    @name = name
    @color = color
  end

  def price=(value)
    @price = value
  end
end

# TEST:

my_flower = Flower.new("roses", "red")
my_flower.price = 10

your_flower = Flower.new("violets", "blue")
your_flower.price = 11

# add your own tests

###################
# Task 2: add a to_sentence method inside the class
# NOTE: you can "open" the class again and write def to_sentence inside it
###################

class Flower
  def to_sentence
    "#{@name} are #{@color}"
  end
end

my_flower.to_sentence # => "roses are red"
your_flower.to_sentence # => "violets are blue"

###################
# Task 3: write a compare method that takes another flower and compare
###################

class Flower
  attr_reader :price

  def compare(another_flower)
    if @price > another_flower.price
      puts "Yup, I am more expensive."
    elsif @price == another_flower.price
      puts "I have the same price"
    else
      puts "Hey I am cheaper!"
    end
  end
end

# TEST:
my_flower.compare(your_flower) # => "Hey I am cheaper!"
your_flower.compare(my_flower) # => "Yup, I am more expensive."

###################
# Task 4: implement a Bouquet class that takes a list of flowers
# add a add method that add a flower to the a list of flowers
###################

class Bouquet
  def initialize(flowers = [])
    @flowers = flowers
  end
  
  def add(flower)
    # your code here
    # HINT: this updates your instance variable
    @flowers << flower
    puts "Great. Added #{flower.name} to the bouquet."
  end
  
  def flowers
    # your code here
    # HINT: this is a reader; return the instance variable
    @flowers
  end
end


my_bouquet = Bouquet.new # this will set the list of flowers to be empty
puts "Flowers that I have: #{my_bouquet.flowers}" # this will print:"Flowers that I have: []"

# now let's add more flowers to our bouquet
my_bouquet.add(my_flower)
my_bouquet.add(your_flower)

# now check that you have two flowers
puts "Flowers now: #{my_bouquet.flowers}"

# OF COURSE, we can start a new bouquet with more than 0 flowers

coderschool_bouquet = Bouquet.new([my_flower, your_flower])


###################
# Task 4: add a total_price method in Bouquet class that returns the total price of all flowers in it
###################

class Bouquet
  def total_price
    total = 0
    @flowers.each do |flower|
      total += flower.price
    end
  end
end