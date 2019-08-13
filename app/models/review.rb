class Review
    attr_reader :author :restaurant

    @@all = []

    def initialize (author, restaurant)
        @author = author
        @restaurant = restaurant 
    end

    def self.all
        @@all
    end




end

