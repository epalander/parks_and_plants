# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroy all"
Garden.destroy_all

puts "Creating Gardens"
color_garden = Garden.create!(
  name: "Color Garden",
  picture: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
)

english_garden = Garden.create!(
  name: "English Garden",
  picture: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
)

puts "Creating Plants"

Plant.create!(
  species: "Wallnut tree",
  picture: "https://www.jardindupicvert.com/12735-large_default/noyer-commun.jpg",
  garden: color_garden
)

Plant.create!(
  species: "Rose",
  picture: "https://images.unsplash.com/photo-1487035242901-d419a42d17af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80",
  garden: english_garden
)
