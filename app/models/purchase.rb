# frozen_string_literal: true

class Purchase < ApplicationRecord
  belongs_to :purchasable, polymorphic: true
  belongs_to :user

  validates :price, presence: true
  validate :no_purchase_overlap

  def no_purchase_overlap
    if Purchase.where("created_at >= ? AND user_id = ?", (Time.now-2.days), self.user.id).any?{|purchase| purchase.purchasable == self.purchasable}
      errors.add(:date_end, 'it overlaps another purchase')
    end
  end
end
