require "bundler/setup"
Bundler.require

get "/" do
  erb :app2
end
