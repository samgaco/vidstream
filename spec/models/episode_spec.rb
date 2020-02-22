# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Episode, type: :model do
  context 'When saving an episode' do
    let(:season) { FactoryBot.build(:season) }

    it 'Should have a title' do
      episode = Episode.new(number: 3, season: season)

      expect(episode.save).to be(false)
    end

    it 'Should be associated with a season' do
      episode = Episode.new(title: 'The Buys', number: 3)

      expect(episode.save).to be(false)
    end
  end
end
