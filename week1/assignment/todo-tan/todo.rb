require_relative "list"

class Todo
  def initialize(filename = "todo.md")
    @filename = filename
    @list = List.new("Today")
  end

  def list
    @list
  end

  def load_data
    file = File.read(@filename)
    lines = file.split("\n")
    lines.each do |line|
      @list.add(Item.new_from_line(line))
    end
  end

  def save(filename = "todo.md")
    File.write(filename, @list.to_string)
  end

  def show_all
    @list.display
  end

  def show_undone
    @list.display_undone
  end

  def show_done
    @list.display_done
  end

  def add(name)
    @list.add(Item.new(name))
  end

  def start
    loop do       
      if prompt == 'exit'
        puts "Goodbye!"
        break
      end
    end
  end

  def prompt
      puts "Hi grandma! what do you want me to do?"
      user_input = gets.chomp
      handle_user_request(user_input)
      user_input
  end

  def handle_user_request(request)
    case 
    when request == 'all'
      show_all
    when request == 'undone'
      show_undone
    when request == 'done'
      show_done
    when request[0] == '+'
      add(request[1..-1].strip)
    when request[0..5] == 'remove'
      @list.remove_at(request[6..-1].to_i - 1)
    end
  end
end

@todo = Todo.new
@todo.load_data
@todo.start