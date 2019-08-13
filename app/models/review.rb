class Review
    attr_reader :customer, :restaurant
    attr_accessor :rating, :content
        # Deliverables noted specifically that customer and restaurant should NOT change, but didn't say so for rating or content.

    @@all = []

    def initialize(customer, restaurant, rating, content)
        # IF TIME:
            # RATING MUST BE INTEGER
            # CONTENT MUST BE STRING
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @content = content

        @@all << self
    end

  def self.all
    @@all
  end


end

### DELIVERABLES ###

### COMPLETED ###

# Review#customer
    # returns the customer object for that given review
    # Once a review is created, I should not be able to change the author

# Review#restaurant
    # returns the restaurant object for that given review
    # Once a review is created, I should not be able to change the restaurant

# Review#rating
    # returns the star rating for a restaurant. This should be an integer from 1-5

# Review#content
    # returns the review content, as a string, for a particular review