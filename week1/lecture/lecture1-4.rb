# alex = {age: 21, name: "alex"}
# bob = {age: 22, name: "bob"}
# carey = {age: 23, name: "carey"}

# alex[:name] # => "alex"

# people = [alex, bob, carey]
# people[0][:name] #=> "alex"
# people[0][:name] = "alexander" #=> "alexander"
# people[0][:name] #=> "alexander"
# people[0][:full_name] = "alex smith" # => starts to get confusing between name vs full_name

class Person
  attr_accessor :company, :age, :last_name
  attr_reader :first_name, :name
 
  # special: don't call alex.initialize
  def initialize(first_name, age, last_name = nil)
    @first_name = first_name
    @age = age 
    @last_name = last_name
    @name = "#{first_name} #{@last_name}"
  end 
 
  def contact
    "#{name} (#{company})"
  end
end

alex = Person.new("alex", 26)
bob = Person.new("bob", 22)

puts alex.name

@alex = alex
@bob = bob
@carey = Person.new("carey", 23)