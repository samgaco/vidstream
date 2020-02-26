# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

0.times do
  User.create(
    email: Faker::Internet.email
  )
end

20.times do
  Movie.create(
    title: Faker::Book.title,
    plot: Faker::Movie.quote
  )
end

20.times do
  Season.create(
    title: Faker::Book.title,
    plot: Faker::Movie.quote,
    number: 1
  )
end

20.times do |i|
  Episode.create(
    title: Faker::Book.title,
    plot: Faker::Movie.quote,
    season: Season.all.find_by(id: i + 1)
  )
end

quality_string = %w[HD SD]
p_string = [Movie.all, Season.all]

10.times do
  index = rand(2)
  Purchase.create(
    price: 2.99,
    quality: quality_string[index],
    purchasable: p_string[index].find_by(id: rand(1..20)),
    user_id: 1
  )
end
