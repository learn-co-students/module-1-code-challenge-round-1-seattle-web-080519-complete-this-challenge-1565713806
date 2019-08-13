require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

### TEST CODE ###

# Instantiate Customer
scott = Customer.new("Scott", "Pilgrim")
knives = Customer.new("Knives", "Chau")
ramona = Customer.new("Ramona", "Flowers")
young = Customer.new("Young", "Neil")
wallace = Customer.new("Wallace", "Smith")

# Instantiate Restaurant
ittos = Restaurant.new("Itto's")
elliot_bay = Restaurant.new("Elliot Bay")
prost = Restaurant.new("Prost")
olive_garden = Restaurant.new("Olive Garden")
grand_central = Restaurant.new("Grand Central")

#Instantiate Review
r1 = Review.new(scott, ittos, 5, "Lorem ipsum.")
r2 = Review.new(scott, elliot_bay, 5, "Leo in vitae turpis massa. Aliquam sem fringilla ut morbi tincidunt augue interdum. Libero nunc consequat interdum varius sit.")
r3 = Review.new(scott, prost, 4, "Amet consectetur adipiscing elit pellentesque habitant morbi tristique senectus et. Egestas sed sed risus pretium quam.")
r4 = Review.new(knives, ittos, 3, "Lacus laoreet non curabitur gravida arcu. Neque viverra justo nec ultrices. Pellentesque dignissim enim sit amet. Leo urna molestie at elementum eu. Turpis egestas pretium aenean pharetra magna. Suscipit tellus mauris a diam maecenas sed enim ut sem. Justo nec ultrices dui sapien. Semper feugiat nibh sed pulvinar proin gravida hendrerit. Id porta nibh venenatis cras sed felis. Cras tincidunt lobortis feugiat vivamus at augue eget arcu dictum. Tempor nec feugiat nisl pretium fusce id velit ut tortor. Fames ac turpis egestas maecenas pharetra convallis. Tortor consequat id porta nibh venenatis cras sed.")
r5 = Review.new(knives, olive_garden, 1, "Porta nibh venenatis cras sed. Gravida cum sociis natoque penatibus et magnis dis.")
r6 = Review.new(ramona, ittos, 1, "Ornare arcu odio ut sem nulla pharetra diam sit. Pretium nibh ipsum consequat nisl vel pretium lectus quam id. Integer quis auctor elit sed vulputate mi.")
r7 = Review.new(ramona, elliot_bay, 5, "Feugiat pretium nibh ipsum consequat nisl vel pretium lectus.")
r8 = Review.new(young, olive_garden, 1, "Consectetur adipiscing elit ut aliquam purus sit amet luctus. Curabitur gravida arcu ac tortor dignissim convallis.")
r9 = Review.new(young, olive_garden, 5, "Changed my mind. Amazing restaurant.")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line