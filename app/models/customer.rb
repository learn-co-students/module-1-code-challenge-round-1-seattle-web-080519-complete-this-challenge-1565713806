class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant, content, rating, self) 
  end

  def num_reviews
    Review.all.select {|review| review.customer == self}.count
  end

  def restaurants
    reviews = Review.all.select {|review| review.customer == self}
    reviews.map {|review| review.restaurant}  
  end

  def self.find_by_name(name)
    @@all.select {|customer| customer.name == name}[0]
  end

  def self.find_all_by_first_name(name)
    @@all.select {|customer| customer.first_name == name}
  end

  #all of the customer full names
  def self.all_names
    customerFull = self.find_all_by_name
    @@all.select {||customer| customer.name = customerFull}
  end


end
