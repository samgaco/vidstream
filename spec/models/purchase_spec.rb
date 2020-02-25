# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Purchase, type: :model do
  context 'When creating a purchase' do
    let(:user) { FactoryBot.build(:user) }
    let(:movie) { FactoryBot.build(:movie) }
    let(:season) { FactoryBot.build(:season) }

    it 'a movie can not be purchased by the same user more than once' do
      purchase = Purchase.new(price: 2.99, quality: 'HD', purchasable: movie, user: user)
      purchase_rep = Purchase.new(created_at: Time.now + 1.day, price: 1.99, quality: 'SD', purchasable: movie, user: user)
      expect { purchase.save }.to change { user.purchases.count }.by(1)
      expect { purchase_rep.save }.to change { user.purchases.count }.by(0)
    end

    it 'a season can not be purchased by the same user more than once' do
      purchase = Purchase.new(price: 2.99, quality: 'HD', purchasable: season, user: user)
      purchase_rep = Purchase.new(price: 1.99, quality: 'SD', purchasable: season, user: user)
      expect { purchase.save }.to change { user.purchases.count }.by(1)
      expect { purchase_rep.save }.to change { user.purchases.count }.by(0)
    end
  end
end
