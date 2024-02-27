# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create!(
  email: 'test@example.com',
  password: '123',
  password_confirmation: '123'
)

Vehicle.create!(
  name: "Foton Thunder 2x2 A/T",
  vehicle_type: "suv",
  capacity: 0.1e3,
  status: "Available"
)

Warehouse.create!(
  name: "Kargada Warehouse",
  address: "Andres Soriano Avenue Brgy 655, Manila",
  latitude: 14.592171720661497,
  longitude: 120.97251356426898,
  capacity: 100
)

Warehouse.create!(
  name: "Warehouse A",
  address: "150 D.Aquino St., Grace Park West Caloocan, 1406 Metro Manila",
  latitude: 14.6483901,
  longitude: 120.9769461,
  capacity: 100
)

Driver.create!(
  name: "Joey Manolito",
  license_number: "13124423506",
  vehicle_id: 1
)



