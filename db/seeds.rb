# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'


# Movie.create(name: "Nombre de la película", synopsis: "Sinopsis de la película", director: "Director de la película")
# Serie.create(name: "Nombre de la serie", synopsis: "Sinopsis de la serie", director: "Director de la serie")
# DocumentaryFilm.create(name: "Nombre del documental", synopsis: "Sinopsis del documental", director: "Director del documental")



10.times do |i|
    Serie.create(name: Faker::Books::CultureSeries.civ, director:Faker::Artist.name , synopsis: Faker::Lorem.sentence(word_count: 20) )
end

10.times do |i|
    Movie.create(name: Faker::Books::CultureSeries.civ, director:Faker::Artist.name , synopsis: Faker::Lorem.sentence(word_count: 20) )
end

10.times do |i|
    DocumentaryFilm.create(name: Faker::Books::CultureSeries.civ, director:Faker::Artist.name , synopsis: Faker::Lorem.sentence(word_count: 20) )
end