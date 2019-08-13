# class Customers
#     attr_reader :name
#     attr_writer
#     attr_accessor

#     @@all = []

#     def initialize(name)
#         @name = name
#         @reviews = []
#         @@all << self
#     end

#     def self.all
#         @@all
#     end

#     def add_review(restaurant, content, rating)
#         Review.new(self, restaurant, rating, content)
#     end

#     def num_reviews
#         Reviews.all.select {|rev| rev.customer == self }.length       
#     end

#     def restaurants 
#         list = Reviews.all.select do |rev| 
#             if rev.customer == self 
#                 rev.restaurant
#             end
#         end
#         return list.uniq
#     end 



# end

