# frozen_string_literal: true

FactoryBot.define do
  factory :episode do
    title { 'The Target' }
    plot { 'Homicide detective Jimmy McNulty observes...' }
    number { 1 }
    season { :season }
  end

  factory :random_episode, class: Episode do
    title { Faker::Book.title }
    plot { Faker::Movie.quote }
    number { rand(1..20) }
    season { :random_season }
  end
end
