## GRADING

- Really great job at setting up your models and relationships. Your join is spot on. 
- Your use of helper methods reduces the total volume of code, using DRY techniques appropriately. 
- Understand the difference between the `attr_reader` and `attr_accessor` within the join model. Only give write access to things that need to be changed. 
- Great use of select in your `find_by_name` method in the Customer class. I would suggest using `find` instead of `select` + grabbing its first index just to clean up code a bit. We can assume each customer has a unique name and therefore select would not be necessary.
- Only major feedback is that you could write more test code in your `console.rb` file and add more annotation within the class files themselves to guide you as you code, but of course, this is not necessarily possible in a timed environment. 