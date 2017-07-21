require 'bundler/setup'
Bundler.require

Tilt.register Tilt::ERBTemplate, 'html.erb'

set :public_folder, Proc.new { File.join(root, "public") }

get '/' do
  params = params
  lines = File.read("todo.data").split("\n")

  items = lines.map.with_index do |line, idx|
    {
      name: line[4..-1],
      done: (line[1] == "x") ? "done" : "undone",
      idx: idx
    }
  end

  erb :index, locals: {items: items}
end

get '/about' do
  owner = "PrimeTimeTran"
  erb :about, locals: {owner: owner}
end

get '/trello' do
  erb :trello
end

post '/create' do
  File.open("todo.data", 'a') { |f|
      f.puts "[ ] #{params[:name]}"
  }
  
  redirect '/'
end

post '/update-all' do
  items = params["items"]
  
  if params["toggle"]   
    idx = params["toggle"].to_i    
    if items[idx]["done"] == "done"
      items[idx]["done"] = "undone"
    else
      items[idx]["done"] = "done"
    end
  end


  File.open("todo.data", 'w') do |f|
    items.each do |item|
      if item["done"] == "done"
        f << "[x] " + item[:name] + "\n"
      else
        f << "[ ] " + item[:name] + "\n"
      end
    end
  end

  redirect back
end