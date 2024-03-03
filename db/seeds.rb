# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# User.create!(
#   email: 'test@example.com',
#   password: 'pokey12345',
#   password_confirmation: 'pokey12345'
# )
#
# FmsG16Route.create!(
#   id: 1,
#   name: "Kargada Warehouse to Hub A",
#   origin_location: "Andres Soriano Avenue Brgy 655, Manila",
#   origin_latitude: 14.592171720661497,
#   origin_longitude: 120.97251356426898,
#   delivery_destination: "Hub A Somewhere",
#   destination_latitude: 14.592171720661497,
#   destination_longitude: 120.97251356426898,
#   distance: 100,
#   estimated_time: 100
# )
#
# FmsG16Shipment.create!(
#   start_date: "2024-01-01",
#   end_date: "2024-02-02",
#   vehicle: "Fotons",
#   driver: "Ryomen Sukuna",
#   total_distance: 100,
#   tracking_code: "fdosfo34",
#   total_drive_time: 100,
#   status: "Completed",
#   quantity: 2,
#   fms_g16_route_id: 1
# )
#
# FmsG16Load.create!(
#   id: 1,
#   name: "Kargada Load",
#   total_price: 15000,
#   total_weight: 200,
#   total_fee: 1500,
#   fms_g16_route_id: 1,
#   fms_g16_shipment_id: 2
# )

FmsG16Order.create!(
  name: "Kargada Order #1",
  item: "Laptop",
  price: 10000,
  free: 1000,
  weight: 100,
  dimension: "2x2",
  LocationFrom: "Muzon",
  LocationTo: "Marilao",
  fms_g16_route_id: 1,
  fms_g16_load_id: 1,
)

FmsG16Order.create!(
  name: "Kargada Order #2",
  item: "Phone",
  price: 5000,
  free: 500,
  weight: 100,
  dimension: "1x1",
  LocationFrom: "Muzon",
  LocationTo: "Marilao",
  fms_g16_route_id: 1,
  fms_g16_load_id: 1,
  )
