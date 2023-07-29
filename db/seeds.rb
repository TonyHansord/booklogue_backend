# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Author.destroy_all
Genre.destroy_all
Book.destroy_all

puts "🌱 Seeding Genres"

50.times do
  Genre.create(name: Faker::Book.genre)
end
