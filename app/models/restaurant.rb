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

  def reviews # Helper method

    # also ugly. I know.

    my_rest_reviews_array = []
    Review.all.each do |review| # IF TIME: choose a better enumerator
      if review.restaurant == self
        my_rest_reviews_array << review
      end
    end
    my_rest_reviews_array
  end

  def customers # Assuming it wants the customer objects
    my_customers = self.reviews.map do |review|
      review.customer
    end
    my_customers.uniq
  end

  # In case above actually needs customer names:

  # def restaurants
  #   my_restaurants = self.my_reviews.map do |review|
  #     review.restaurant
  #   end
  #   my_restaurants.map do |my_rest|
  #     my_rest.name
  #   end
  # end

  def average_star_rating # IF TIME: add else statement in case a restaurant has no reviews!
    my_ratings = self.reviews.map do |review|
      review.rating
    end
    my_ratings.sum / my_ratings.length
  end

  def longest_review
    my_review_contents = self.reviews.map do |review|
      review.content
    end
    my_review_contents.sort_by(&:length).pop
      # sorts array of the review contents by length, the longest being last; then, the .pop returns the last item.    
  end
end


### DELIVERABLES ###

### COMPLETED ###
  
  # Restaurant#customers
      # Returns a unique list of all customers who have reviewed a particular restaurant.

  # Restaurant#reviews
      # returns an array of all reviews for that restaurant

  # Restaurant#average_star_rating
    # returns the average star rating for a restaurant based on its reviews

  # Restaurant#longest_review
    # returns the longest review content for a given restaurant
