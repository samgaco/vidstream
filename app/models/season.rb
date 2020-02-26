# frozen_string_literal: true

class Season < ApplicationRecord
  has_many :users, through: :purchases
  has_many :episodes
  has_many :purchases, as: :purchasable

  validates :title, presence: true

  def time_left
    if !self.purchases.empty?
      ((self.purchases.find_by(user_id: 1).created_at+2.days-Time.now)/1.hour).round(1)
    else 
      false 
    end
  end
end
