class Review
  
    attr_accessor :content, :rating
    attr_reader :customer, :restaurant

    @@all = []

    def initialize(content, rating, restaurant, customer)
        @content = content
        @rating = rating
        @restaurant = restaurant
        @customer = customer
        @@all << self
    end

    def self.all
        @@all
    end

    


end

