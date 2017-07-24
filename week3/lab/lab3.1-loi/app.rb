require "bundler/setup"
Bundler.require

Tilt.register Tilt::ERBTemplate, 'html.erb'

set :public_folder, Proc.new { File.join(root, "public") }

get "/" do
  erb :"index.html"
end

get "/c1" do
  erb :"c1.html"
end