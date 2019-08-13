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


  def full_name
    "#{first_name} #{last_name}"
  end

  #def add_review(restaurant, content, rating)

  #end

  def num_reviews
    Review.all.select {|n| n.name}
  end

  #def restaurants
    Self.review.all.select 
  #end

end
