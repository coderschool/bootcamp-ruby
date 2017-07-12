name = "Adam Smith"
puts name
puts "hello " + name
puts "hello #{name}"
puts (name + ", ") * 5
123 # this is not used 

age = 32
puts name + "32"
puts "Hi my name is #{name} and I am #{age} years old"

# Exercise:
# define a name variable for your name
# define an age variable for your age
# perform some calculation

total = 1 + 2 + 3 + 4 + 5 + 6 + 7
puts total

# use puts to display the result on the right side

# TASK: how many hours are there in a year?

day_hours = 24
month_hours = day_hours * 30
year_hours = month_hours * 12
puts "there are #{year_hours} hours in a year"

year_seconds = year_hours * 60 * 60
age = 1246_000_000 / year_seconds
puts "If Bob is 12460 million seconds old, then he is #{age} years old"

print "hello"