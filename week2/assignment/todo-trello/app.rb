require 'bundler/setup'
Bundler.require

require_relative "list"
require "sinatra/reloader"

after_reload do
  puts "reloading..."
end

set :public_folder, File.dirname(__FILE__) + '/static'

get "/" do
  @list = List.new("todo.md", params["sort"])
  erb :index, locals: {items: @list.sorted_items, sort: params["sort"]}
end

post "/complete" do
  @list = List.new
  puts "Completing: #{params['name']}"
  @list.find_and_mark_done(params["name"])
  @list.save!
  redirect back
end

post "/undo" do
  @list = List.new
  puts "Undo: #{params['name']}"
  @list.find_and_undo(params["name"])
  @list.save!
  redirect back
end

post "/add" do
  @list = List.new
  puts "Creating item #{params['name']}"
  if params["name"]
    @list.add(params["name"])
    @list.save!
  end
  redirect back
end
