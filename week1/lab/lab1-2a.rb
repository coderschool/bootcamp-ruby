# A1
#
puts "\nMilestone A1: Review Array"
puts "-". * 75
singers = ["Drake", "Bieber", "Adele"]
puts singers.first
puts singers.last 
puts singers[1]

# A2
#
puts "\nMilestone A2: Hash"
puts "-". * 75
rating = {}
rating["Adele"] = 9
rating["Bieber"] = 9
rating["Drake"] = 10
puts "Rating is: #{rating}"
p rating.to_a
p rating.to_a.to_h
p rating.keys
p rating.to_a.map {|e| e.first}

# A3 
#
puts "\nMilestone A3: Comparing/Adding Hash Values"
puts "-". * 75
@rating = rating
def better_singer(name_one, name_two)
  first_value = @rating[name_one]
  second_value = @rating[name_two]
  if first_value > second_value
    name_one
  else
    name_two
  end
end

puts better_singer("Drake", "Adele")

def total_rating(ratings)
  rating = 0
  ratings.values.each do |points|
    rating = rating + points
  end
  rating
end
puts total_rating(@rating)

# B
#
puts "\nMilestone B: Review Array's each vs map"
puts "-". * 75

def total(numbers)
  total = 0 
  numbers.each do |num|
    total = total + num
  end
  total
end

numbers = [1, 2, 3]
more_numbers = (1..10).to_a
puts total(numbers)
puts total(more_numbers)

def square_total(numbers)
  squared = numbers.map do |num|
    num * num
  end

  total(squared)
end

puts square_total(numbers)
puts square_total(more_numbers)

# C
# 
puts "\nMilestone C: Representing TODO tasks"
puts "-". * 75
