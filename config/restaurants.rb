# class Restaurants
#     attr_reader :name
#     attr_writer
#     attr_accessor

#     @@all = []

#     def initialize(name)
#         @name = name
#         @@all << self
#     end

#     def self.all
#         @@all
#     end

#     def customers
#         Reviews.all.map { |rev| rev.customer }.uniq
#     end

#     def reviews
#         Reviews.all.select { |rev| rev.restaurant == self}
#     end

#     def average_star_rating
#         list = Reviews.all.select do |rev| 
#             if rev.restaurant == self
#                 rev.rating
#             end
#         end
#         average = list.sum / list.length
#         return average
#     end

#     def longest_review
#         reviews.map { |rev| rev.contents }.max_by { |x| x.size}  
#     end

#     def self.find_by_name(name)
#         self.all.select { |res| res.name == name}
#     end

# end