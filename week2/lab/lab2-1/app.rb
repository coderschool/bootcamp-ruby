require 'bundler/setup'
Bundler.require

require_relative "list"

get "/" do
  @list = List.new
  @list.display_html
end

get "/done" do
  "DONE ITEMS SHOW UP HERE"
end