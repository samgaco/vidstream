# frozen_string_literal: true

FactoryBot.define do
  factory :movie do
    title { 'Indland Empire' }
    plot { 'As an actress begins to adopt the persona of her character in a film...' }
  end

  factory :random_movie, class: Season do
    title { Faker::Book.title }
    plot { Faker::Movie.quote }
  end
end
