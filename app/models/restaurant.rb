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
  end

  def reviews
  end

  # def average_star_rating
  # end

  # def longest_review
  # end

  def self.find_by_name(name)
    @@all.select {|restaurant| restaurant.name == name}[0]
  end

end
