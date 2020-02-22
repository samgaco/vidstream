# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { 'example@g.com' }
  end

  factory :random_user, class: User do
    email { Faker::Internet.email }
  end
end
