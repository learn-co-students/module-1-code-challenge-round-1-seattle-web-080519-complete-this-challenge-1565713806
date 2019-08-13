require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

res1 = Restaurant.new("res_1")
 res2 = Restaurant.new("res_2")
 res3 = Restaurant.new("res_3")
 
 cus2 = Customer.new("jane", "mary")
 cus1 = Customer.new("first", "second")
 cus3 = Customer.new("lee", "park")
 
rev1 = Review.new(cus1, res1, 3, "bad")
rev2 = Review.new(cus2, res2, 4, "okay")
rev3 = Review.new(cus2, res3, 8, "great")
rev4 = Review.new(cus3, res1, 2, "worst")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line