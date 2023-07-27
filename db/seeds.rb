require 'faker'

puts "Deleting old data"
Restaurant.destroy_all
puts "Old data deleted"

puts"Creating restaurants"
10.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    city: Faker::Address.city
  )
  restaurant.save!
end
puts"Restaurants created!"