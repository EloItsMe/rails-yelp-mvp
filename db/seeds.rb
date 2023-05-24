puts 'Cleaning database...'

Restaurant.destroy_all
Review.destroy_all

puts 'Creating restaurants...'

dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '54672891203', category: "french" }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', phone_number: '54672891203', category: "french" }
sushi =  { name: 'sushi', address: '56A Shoreditch High St, London E1 6PQ', phone_number: '54672891203', category: "french" }
pasta =  { name: 'pasta', address: '56A Shoreditch High St, London E1 6PQ', phone_number: '54672891203', category: "french" }
china =  { name: 'china', address: '56A Shoreditch High St, London E1 6PQ', phone_number: '54672891203', category: "french" }

[dishoom, pizza_east, sushi, pasta, china].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts 'Finished!'
