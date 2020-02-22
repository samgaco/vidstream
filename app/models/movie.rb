# frozen_string_literal: true

class Movie < ApplicationRecord
  has_many :users, through: :purchases
  has_many :purchases, as: :purchasable

  validates :title, presence: true
end
