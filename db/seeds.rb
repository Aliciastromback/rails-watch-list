# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# 10.times do |movie|
#   randomnumber = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].sample
#   movie = Movie.create(title: Faker::Movie.title, overview: Faker::Movie.quote, poster_url: Faker::Internet.url, rating: randomnumber )
#   puts movie.title
# end

List.create(name: 'romantic')
List.create(name: 'comedy')
List.create(name: 'thriller')
List.create(name: 'drama')
List.create(name: 'action')

require "open-uri"

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
list = List.new(title: "NES", body: "A great console")
list.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
list.save
