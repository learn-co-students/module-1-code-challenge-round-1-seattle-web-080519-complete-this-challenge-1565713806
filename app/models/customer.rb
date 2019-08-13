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
    # Review.all << Review.new(self, restaurant, rating, content)
end

def num_reviews
    Review.all.select {|rev| rev.customer == self }.length       
end

def restaurants 
  list = Review.all.select do |rev| 
    if rev.customer == self 
        rev.restaurant
    end
  end
  return list.uniq
end

end
