require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
c = Customer.new("h","h")
cr = Customer.new("fn","ln")
r = Restaurant.new("name")

h = c.add_review(r, "it twas meh", 3)
l = c.add_review(r, "it tws meh", 1)
r = cr.add_review(r, "it tw", 3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line