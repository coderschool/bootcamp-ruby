require 'bundler/setup'
Bundler.require

require_relative "list"
require "sinatra/reloader"

after_reload do
  puts "reloading..."
end

get "/" do
  @list = List.new
  erb :index, locals: {items: @list.sorted_items}
end

post "/complete" do
  @list = List.new
  puts "Completing: #{params['name']}"
  @list.find_and_mark_done(params["name"])
  @list.save!
  redirect to("/")
end

post "/undo" do
  @list = List.new
  puts "Undo: #{params['name']}"
  @list.find_and_undo(params["name"])
  @list.save!
  redirect to("/")
end

post "/add" do
  @list = List.new
  puts "Creating item #{params['name']}"
  if params["name"]
    @list.add(params["name"])
    @list.save!
  end
  redirect to("/")
end
