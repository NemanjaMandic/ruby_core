require 'erb'

treehouse = {
  name: "treehouse",
  location: "Treehouse Island"
}

template = <<-TEMPLATE
 From the desk of <%= treehouse[:name] %>
 -------------------------------------------
 Welcome to <%= treehouse[:location] %>.
 
 We hope you enjoy your stay
 -------------------------------------------
 
 <% treehouse.keys.each do |key| %>
  Key: <%= key %>
 <% end %>
TEMPLATE

erb = ERB.new(template)
puts erb.result