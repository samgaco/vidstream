# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'When saving a new user' do
    it 'should have an email' do
      user = User.new

      expect(user.save).to be(false)
    end
  end
end
