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

def customers
    Review.all.map { |rev| rev.customer }.uniq
end

def reviews
    Review.all.select { |rev| rev.restaurant == self}
end

def average_star_rating
    list = Review.all.select do |rev| 
        if rev.restaurant == self
            rev.rating
        end
    end
    average = list.sum / list.length
    return average
end

def longest_review
    reviews.map { |rev| rev.contents }.max_by { |x| x.size}  
end

def self.find_by_name(name)
    self.all.select { |res| res.name == name}
end
end
