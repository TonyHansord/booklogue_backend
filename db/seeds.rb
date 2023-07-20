# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "🌱 Seeding Authors"

10.times do
  Author.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

puts "🌱 Seeding Genres"

10.times do
  Genre.create(name: Faker::Book.genre)
end

puts "🌱 Seeding Books"

10.times do
  book = Book.create(title: Faker::Book.title, genre_id: Genre.all.sample.id)
  book.authors << Author.all.sample
end
