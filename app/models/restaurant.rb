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
    self.reviews.map {|review| review.customer}.uniq
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def average_star_rating
    sum = self.reviews.map {|review|  review.rating}.sum
    num = reviews.length
    sum/num.to_f
  end

  def longest_review
    longest = ""
    self.reviews.each do |review|
      if longest.length < review.content.length
        longest = review.content
      end
    end
    longest
  end

  def self.find_by_name(name)
    @@all.select {|restaurant| restaurant.name == name}[0]
  end

end
