# Sinatra DSL
# 'get'
require 'bundler/setup'
require 'sinatra'

get "/" do
  "<h1 style='color:red'>Hello World</h1>"
end