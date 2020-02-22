# frozen_string_literal: true

class User < ApplicationRecord
  has_many :purchases

  validates :email, format: { with: /@/ }, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 254 }

  def movies
    self.purchases.where(purchasable_type: "Movie")
  end

  def seasons
    self.purchases.where(purchasable_type: "Season")
  end
end
