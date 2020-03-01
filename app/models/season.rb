# frozen_string_literal: true

class Season < ApplicationRecord
  has_many :users, through: :purchases
  has_many :episodes
  has_many :purchases, as: :purchasable

  validates :title, presence: true
end
