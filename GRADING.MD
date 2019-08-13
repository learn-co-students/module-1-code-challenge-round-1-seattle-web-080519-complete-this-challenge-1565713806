## GRADING

- Great use of the `console.rb` file. You show that you correctly understand the relationships between the three models. 
- Lorem Ipsum generato - testing those edge cases for length of content.  
- Your average star rating should account for floats, but other than that, your method works well.
- You could use a `select` is your `my_reviews` method to clean up your code. 
- Be on the look out for what the deliverables are asking for. Sometimes you return strings instead of whole objects. In the example below, your second map is unnecessary:

    def restaurants
        my_restaurants = self.my_reviews.map do |review|
            review.restaurant
        end
        my_restaurants.map do |my_rest|
            my_rest.name
        end
    end

- You can add more stringent controls on your input parameters when you instantiate `add_review` for the rating so that the user is not allowed to enter a value outside of 1 to 5. 
- Great attention to detail when annotating your code. This sets you up for a great workflow as you build out your methods.