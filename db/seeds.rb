# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Dishoom", address: "London", phone_number: "012345", category: "belgian")
puts "Created Dishoom"
Restaurant.create!(name: "Pizza East", address: "London", phone_number: "987654321", category: "italian")
puts "Created Pizza East"
Restaurant.create!(name: "Alex' Bistro", address: "Berlin", phone_number: "987654321", category: "french")
puts "Created Alex Bistro"
Restaurant.create!(name: "Doms' Bistro", address: "Berlin", phone_number: "7654321", category: "japanese")
puts "Created Doms Bistro"
Restaurant.create!(name: "Ming dynasie", address: "Berlin", phone_number: "454545454", category: "chinese")
puts "Created Ming dynasie"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
