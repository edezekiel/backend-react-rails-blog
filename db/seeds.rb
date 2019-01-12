# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Article.destroy_all

10.times do
  a = Article.create(
    title: Faker::StarWars.character,
    text: Faker::StarWars.quote
  )

  Article.create(title: a.title, text: a.text)

end
