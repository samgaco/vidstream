# frozen_string_literal: true

FactoryBot.define do
  factory :season do
    title { 'The Wire (season 1)' }
    plot { 'The investigation is triggered when...' }
    number { 1 }
  end

  factory :random_season, class: Season do
    title { Faker::Book.title }
    plot { Faker::Movie.quote }
    number { rand(1..10) }
  end
end
