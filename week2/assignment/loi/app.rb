require 'bundler/setup'
require_relative "item"
require_relative "list"

Bundler.require

Tilt.register Tilt::ERBTemplate, 'html.erb'

set :public_folder, Proc.new { File.join(root, "public") }

get '/' do
  list = List.new
  @items = list.items
  erb :index
end

post '/create' do
  File.open("todo.data", 'a') { |f|
      f.puts "[ ] #{params[:name]}"
  }  
  redirect '/'
end

post '/update-all' do
  list = List.new
  items = list.hash_to_object(params["items"])
  
  puts "\n\nParameters:"
  p params

  if params["toggle"]   
    idx = params["toggle"].to_i    
    p idx 
    p items[idx]
    items[idx].toggle!
  end

  File.open("todo.data", 'w') do |f|
    items.each do |item|
      if item.done?
        f << "[x] " + item.name + "\n"
      else
        f << "[ ] " + item.name + "\n"
      end
    end
  end

  redirect back
end

get '/about' do
  @owner = "PrimeTimeTran"
  erb :about
end

get '/trello' do
  erb :trello
end