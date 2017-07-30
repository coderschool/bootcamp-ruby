require "bundler/setup"
Bundler.require

get "/" do
  erb :"index.html"
end 

get "/c1" do
  erb :"c1.html"
end 