require 'bundler/setup'
Bundler.require


get '/' do
  name = "Loi"
  erb :index, locals {name: name}
end