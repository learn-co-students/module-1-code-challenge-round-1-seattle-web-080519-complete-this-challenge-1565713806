require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


joe = Customer.new("Joe Dirt")
sarah = Customer.new("Sarah Flow")
ben = Customer.new("Ben Lee")
hannah = Customer.new("Hannah Mae")

indochine = Restaurant.new("Indochine")
umis = Restaurant.new("Umi's")
harmon = Restaurant.new("Harmon")
table47 = Restaurant.new("Table 47")

r1 = Review.new("Joe Dirt", "Umi's", 4)
r2 = Review.new("Sarah Flow", "Table 47", 5)
r3 = Review.new ("Ben Lee", "Indochine", 4)
r4 = Review.new("Hannah Mae", "Harmon", 3)
r5 = Review.new("Hannah Mae", "Table 47", 3)
r6 = Review.new("Sarah Flow", "Harmon", 2)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line