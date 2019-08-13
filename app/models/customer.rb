class Customer
  attr_reader :first_name, :last_name
@@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end
  def self.all
    @@all
  end
  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
  end
  def num_reviews
    Review.all.select {|reviews| reviews.customer == self}.count
  end
  def restaurants
    rev = Review.all.select {|reviews| reviews.customer == self}
    rev.map {|reviews| reviews.restaurant}
  end

  def full_name
    "#{first_name} #{last_name}"
  end
  def self.find_by_name(name)
    n = name.split(" ")
    self.all.find {|customer| customer.first_name == n.first && customer.last_name == n.last}
  end
  def self.find_all_by_first_name(name)
    self.all.select {|customer| customer.first_name == name}
  end
  def self.all_names
    all.map {|customer| customer.full_name}
  end
end
