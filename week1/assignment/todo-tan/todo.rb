require_relative "list"

class Todo
  def initialize(filename = "todo.md")
    @filename = filename
    @list = List.new("Today")
    @trash_list = List.new("Trash")
    @last_request = {}
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

  def add(name)
    @list.add(Item.new(name))
    @last_request = {action: 'add', item_name: name}
    seperate("Add \"#{name}\" successful!!")
  end

  def help
    puts "Here are commands that you can do:"
    puts "   1. \"all\" show all the todo items"
    puts "   2. \"show done\" show all done items"
    puts "   3. \"show undone\" show all undone items"
    puts "   4. \"+ buy milk\" will add an item named \"buy milk\""
    puts "   5. \" done 2\" will mark the 2nd item as done"
    puts "   6. \"remove 2\" will remove the 2nd item in the list"
    puts "   6. \"save\" will save the todo list to file"
    puts "   7. \"show trash\" will show deleted tasks"  
    puts "   8. \"exit\" to exit."
  end

  def mark_done_at(index)
    @list.mark_done_at(index)
    seperate("Mark \"#{@list.items[index].name}\" as done!")
  end

  def remove_at(index)
    item_to_delete = @list.items[index]
    @trash_list.add(item_to_delete)
    @last_request = {action: 'remove', item: item_to_delete}
    @list.remove_at(index)
    seperate("Remove \"#{item_to_delete.name}\" successful!!!")
  end

  def undo_remove
    @list.add(@last_request[:item])
    @trash_list.remove_at(@trash_list.items.index{|item| item.name == @last_request[:item].name})
    @last_request = {}
    seperate("Undo remove action!")
  end

  def undo_add
    index_to_remove = @list.items.index{|item| item.name == @last_request[:item_name]}
    @list.remove_at(index_to_remove)
    seperate("Undo add action!")
    @last_request = {}
  end

  def undo
    if @last_request == {}
      puts "Nothing to undo"
    else
      case @last_request[:action]
      when 'remove'
        undo_remove
      when 'add'
        undo_add
      end
    end
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
      seperate("Tan's Todo app")
      puts "Hi grandma! what do you want me to do?"
      user_input = gets.chomp
      handle_user_request(user_input)
      user_input
  end

  def seperate(title)
    puts "\n"
    puts ("-" * 75)
    puts title
    puts ("-" * 75)
  end

  def handle_user_request(request)
    seperate(request)
    case 
    when request == 'help'
      help
    when request == 'all'
      @list.display
    when request == 'show undone'
      @list.display_undone
    when request == 'show done'
      @list.display_done
    when request[0] == '+'
      add(request[1..-1].strip)
    when request[0..5] == 'remove'
      remove_at(request[6..-1].to_i - 1)
    when request[0..3] == "save"
      if request.length == 4
        save
      else
        save(request[4..-1].strip)
      end
    when request == 'undo'
      undo
    when request[0..3] == "done"
      mark_done_at(request[4..-1].to_i - 1)
    when request == "show trash"
      @trash_list.display
    else
      puts "Sorry I don't understand your command!!!"
    end
  end
end

@todo = Todo.new
@todo.load_data

aliases = {
  "a"  => "all",
  "d"  => "done",
  "+"  => "add"
}

if ARGV.empty?
  puts "Command list: "
  puts "all or a - show all todo items"
  puts "done or d- show all done items"
  puts "add \"Love command line\" or + \"love command line\" - add a new command line item"
else
  command = aliases[ARGV[0]] || ARGV[0]
  case command
  when 'all'
    @todo.list.display
  when 'done'
    @todo.list.display_done
  when 'add'
    @todo.add(ARGV[1]) unless ARGV[1].nil?
    @todo.save
  end
end