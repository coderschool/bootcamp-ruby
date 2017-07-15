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
puts "\nMilestone C.1: Representing TODO tasks"
puts "-". * 75

@my_tasks = [
  {task: "Do Homework", priority: 10},
  {task: "Look at references", priority: 7},
  {task: "Apply Concepts", priority: 8},
  {task: "Write Code", priority: 9},    
  {task: "Read instructions", priority: 1},
  {task: "Read instructions again", priority: 2},
  {task: "Follow direction", priority: 3},
  {task: "Open Editor", priority: 4},
  {task: "Set up other dependencies", priority: 5},
  {task: "Google", priority: 6}
]

puts "\nMilestone C.2: Define most_important method:"
puts "-". * 75

def most_important(tasks)
  compare = tasks[0]
  tasks.each do |task|
    if task[:priority] < compare[:priority]
      compare = task
    end
  end
  compare 
end

puts most_important(@my_tasks)

puts "\nMilestone C.3: Define sorted method:"
puts "-". * 75

def sorted(tasks)
  tasks.sort_by { |hsh| hsh[:priority]}
end

puts sorted(@my_tasks)

puts "\nMilestone C.4: Define names_only method:"
puts "-". * 75

def names_only(tasks)
  tasks.map do |task|
    task[:task]
  end
end

puts names_only(@my_tasks)

puts "\nMilestone C.5: Define to_task method:"
puts "-". * 75

def to_task(task, priority = 1)
  {task: task, priority: priority}
end

puts to_task("Do homeworrrrk!", 10)

puts "\nMilestone C2.1: Define to_tasks method:"
puts "-". * 75

def to_tasks(names)
  array = []
  names.each_with_index do |task, idx|
    array << {"name" => task, "priority" => idx}
  end
  array
end

puts to_tasks(["learn symbol", "review string"])

puts "\nMilestone C2.2: Define map.with_index method:"
puts "-". * 75

def to_tasks(names)
  names.map.with_index { |task, idx| {"name" => task, "priority" => idx} }
end

puts to_tasks(["learn symbol", "review string"])

puts "\nMilestone C2.3: Define to_tasks_random method:"
puts "-". * 75

def to_tasks_random(names)
  names.map { |task| {"name" => task, "priority" => Random.rand(1..10)} }
end

puts to_tasks_random(@my_tasks)

puts "\nMilestone C3.1: Change key string to symbol:"
puts "-". * 75

def symbolize(task)
  back = {}
  task.map {|key, value| back[key.to_sym] = value }
  back
end

old_task = {"name" => "learn hash", "priority" => 1}
new_task = {"task" => "Lalalala", "priority" => 1}
puts old_task
puts symbolize(old_task)
puts new_task
puts symbolize(new_task)

puts "\nMilestone C3.2: Define Symbolist:"
puts "-". * 75

def symbolist(tasks)
  array = []
  tasks.each do |task|
    array << task[:task]
  end

  array 
end

puts symbolist(@my_tasks)