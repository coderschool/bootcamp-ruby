require 'bundler/setup'
Bundler.require

Tilt.register Tilt::ERBTemplate, 'html.erb'

set :public_folder, Proc.new { File.join(root, "public") }

@@items = [
  {name: "Attend lectures", done: true, priority: 1},
  {name: "Do labs", done: true, priority: 2},
  {name: "Build stuff", done: false, priority: 3}
]  
get '/' do
  name = "Loi"
  p @@items
  erb :index, locals: {items: @@items}
end

get '/about' do
  owner = "PrimeTimeTran"
  erb :about, locals: {owner: owner}
end

get '/trello' do
  erb :trello
end

post '/create' do
  hash = {name: params[:name], done: params[:done], priority: params[:priority]}
  p hash
  @@items << hash
  redirect '/'
end

post '/done' do
  item = @@items.find {|i| i[:name] == params[:name]}
  item[:done] = true
  redirect '/'
end

post '/undone' do
  item = @@items.find {|i| i[:name] == params[:name]}
  item[:done] = false
  redirect '/'
end