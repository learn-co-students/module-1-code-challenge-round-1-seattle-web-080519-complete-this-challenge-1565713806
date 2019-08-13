class Review
    
    attr_reader :customer, :restaurant

    @@all = []

    def initialize(customer, restaurant)
        @customer = customer
        @restaurant = restaurant
        @@all << self
    end

    def self.all
        @@all
    end

    # def customer
    # end

    # def restaurant
    # end

    # def rating
    # end

    # def content
    # end

end

