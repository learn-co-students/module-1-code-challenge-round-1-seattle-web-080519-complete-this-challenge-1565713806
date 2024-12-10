require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


knut = Customer.new("Knut", "Knutsen")
sven = Customer.new("Sven", "Svensen")
knut2 = Customer.new("Knut", "johson")

ihop = Restaurant.new("Ihop")
dennys = Restaurant.new("Denny's")

knut.add_review(ihop, "They have great pancakes", 5)
knut.add_review(dennys, "The coffee could be better", 3)
knut.add_review(ihop, "I've always liked this Ihop, but just had terrible experience there.", 1)
sven.add_review(ihop, "I don't know about Knut, but ihop isn't that bad.", 4)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line