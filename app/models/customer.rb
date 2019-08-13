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

  def add_review(restaurant, rating, content) # switched rating and content order for consistency
    Review.new(self, restaurant, rating, content)
  end

  def my_reviews # Helper method for #num_reviews and #restaurants

    # I know it's ugly!

    
    my_reviews_array = []
    Review.all.each do |review| # IF TIME: choose a better enumerator
      if review.customer == self
        my_reviews_array << review
      end
    end
    my_reviews_array
  end

  def num_reviews
    self.my_reviews.count
  end

  def restaurants
    my_restaurants = self.my_reviews.map do |review|
      review.restaurant
    end
    my_restaurants.map do |my_rest|
      my_rest.name
    end
  end
end





### DELIVERABLES ###

### COMPLETED ###

# Customer#add_review(restaurant, content, rating)
    #   given a restaurant object, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.

# Customer#num_reviews
    #   Returns the total number of reviews that a customer has authored

# Customer#restaurants
    #   Returns a unique array of all restaurants a customer has reviewed