puts "\n" + "="*10 + "Milestone A1 - Numbers and Variables" + "="*10

day_hours = 24
year_hours = day_hours * 365
puts "* How many hours are there in a year? #{year_hours}\n"

day_minutes = 24 * 60
year_minutes = 365 * day_minutes
decade_minutes = 10 * year_minutes
puts "* How many minutes are there in a decade? #{decade_minutes}\n"

years_old = 32
year_seconds = year_minutes * 60
seconds_old = years_old * year_seconds
puts "* How many seconds old are you? #{seconds_old}"

bob_seconds_old = 1246_000_000
bob_years = bob_seconds_old / year_seconds
puts "* If Bob is 1246 million seconds old, how old is Bob in years? #{bob_years}"

puts "\nHere are tougher questions:"
puts "* There's a common, if slightly controversial, saying about age differences in dating: "
puts"You're allowed to date half your age plus seven years (if you're a man) (https://en.wikipedia.org/wiki/Age_disparity_in_sexual_relationships#The_.22half-your-age-plus-seven.22_rule)."

youngest_age_for_bob = bob_years / 2 + 7
puts "What is the youngest age in seconds that Bob can date? What is the oldest age Bob can date? #{youngest_age_for_bob}"

alex_years = 192720 / year_hours
alex_needed_hours = (youngest_age_for_bob - alex_years) * year_hours
puts "Alex's age: #{alex_years}"
puts "\n* Super bonus: If Alex is currently 192720 hours old (too young for Bob), "
puts "how many hours will it be before Alex can date Bob without violating the n/2+7 formula? #{alex_needed_hours}"

puts "\n"
puts "="*10 + "Milestone A2 - Strings and Variables" + "="*10

puts "1. Print \"Hello world\". Try both print vs puts — what's the difference? (most of the time you will use puts)"

print "hello world"
puts "hello world"


puts "\n\n2. Print \"Hello Name\" where Name is your name. Set the name variable to something else. Print again."
name = "harley"
puts "Hello #{name}"

puts "\n3. Print a short poem that you like"
puts "violets are red"
puts "roses are blue"
puts "lab is hard"
puts "things are new"

puts "\n4. Print your name 5 times"
puts "harley" * 5

puts "\n5. What operators do you know that can be used with strings?"
puts "+, *, <<, [], ==, %, =~, ===, <=>"

puts "\n" + "="*10 + "Milestone A1 - Strings, Numbers and Input" + "="*10

# EASY
# 1. Set your name to a variable named name
# 2. Print your name 50 times
# 3. Set your first name to first_name, set your last name to last_name, and set full_name to be your full name based on first_name and last_name

puts "\n4. Print \“What's your name\”, then let user enters their name (e.g. “John”) and print “Welcome, John” (Hint: use gets)"
print "What's your name? "
name = gets.chomp
puts "Hello #{name}!"

puts "\n5. Ask the user for their first name and their last name separately, then print “Your full name is...” together with their full name."
print "First name: "
first = gets.chomp
print "Last name: "
last = gets.chomp
puts "Your full name is #{first} #{last}"

puts "Bonus: "

# puts '* Capitalize the first letter of each name. So if the user inputs “bob loblaw”, your method will say “Hello Bob Loblaw”.'
first = "bob"
last = "loblaw"
puts "Your full name is #{first.capitalize} #{last.capitalize}"

# puts "* Sometimes computer programming feels like an arms race against your users; they'll come up with interesting ways to break your program. For this one, try and capitalize the name correctly as Firstname Lastname, no matter what input the user gives. For example, even if the user says their name is mYstERIoUS hACKeR, your full_name function should return Mysterious Hacker."
first = "mYstERIoUS"
last  = "hACKeR"
puts "Your full name is #{first.capitalize} #{last.capitalize}"

