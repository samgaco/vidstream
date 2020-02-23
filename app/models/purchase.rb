# frozen_string_literal: true

class Purchase < ApplicationRecord
  belongs_to :purchasable, polymorphic: true
  belongs_to :user

  validates :price, presence: true
  validates_uniqueness_of :user_id, scope: :purchasable_id
end
