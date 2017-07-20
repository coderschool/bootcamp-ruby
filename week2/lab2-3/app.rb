require "sinatra"

get "/" do
  # this will look for the views/index.html.erb file
  erb :"index.html", locals: {name: "CoderSchool"}, layout: :"layout.html"
end

get "/about" do
  erb :"about.html", locals: {name: "CoderSchool"}, layout: :"layout.html"
end

get "/trello" do
  my_items = [
    {name: "Learn Strings", done: false},
    {name: "Learn Hash", done: true},
    {name: "Learn Variables", done: true},
    {name: "Learn Methods", done: true},
    {name: "Learn ERB", done: true},
    {name: "Learn Partials", done: true},
  ]
  erb :"trello.html", layout: :"layout.html", locals: {items: my_items}
end