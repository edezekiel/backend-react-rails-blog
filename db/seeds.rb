# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Article.destroy_all

Article.create(title: Faker::StarWars.character, text: Faker::StarWars.quote, date:"January 1, 2019", image: Faker::LoremPixel.image("200x200"))
Article.create(title: Faker::StarWars.character, text: Faker::StarWars.quote, date:"January 2, 2019", image: Faker::LoremPixel.image("200x200"))
Article.create(title: Faker::StarWars.character, text: Faker::StarWars.quote, date:"January 4, 2019", image: Faker::LoremPixel.image("200x200"))
Article.create(title: Faker::StarWars.character, text: Faker::StarWars.quote, date:"January 5, 2019", image: Faker::LoremPixel.image("200x200"))
Article.create(title: Faker::StarWars.character, text: Faker::StarWars.quote, date:"January 6, 2019", image: Faker::LoremPixel.image("200x200"))
