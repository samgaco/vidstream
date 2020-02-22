# frozen_string_literal: true

FactoryBot.define do
  factory :purchase do
    price { '2.99' }
    quality { 'HD' }
    purchasable { :season }
    user { :user }
  end
end
