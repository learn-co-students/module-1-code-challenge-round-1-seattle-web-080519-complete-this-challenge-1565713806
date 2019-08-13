require 'pry'
class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def reviews
    Review.all.select {|review| 
      review.restaurant == self
    }
  end
  def average_star_rating
    reviews.map {|review| review.rating}.sum/ reviews.count
  end
  def customers
    reviews.map {|review| review.customer}.uniq 
  end
  def longest_review
    sorted = reviews.sort_by {|review| review.content.length}
    sorted.last
  end
  def self.find_by_name(name)
    all.find {|restaurant| restaurant.name == name}
  end


end
