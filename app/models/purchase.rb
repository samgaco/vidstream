# frozen_string_literal: true

class Purchase < ApplicationRecord
  belongs_to :purchasable, polymorphic: true
  belongs_to :user

  validates :price, presence: true
  validates :purchasable_id, uniqueness: { scope: %i[purchasable user] }
end
