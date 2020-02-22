# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Season, type: :model do
  context 'When saving a season' do
    let(:season_fact) { FactoryBot.build(:season) }

    it 'should have a title' do
      season = Season.new(number: 2)

      expect(season.save).to be(false)
    end

    it 'should have a number' do
      season = Episode.new(title: 'The Wire (season 2)')

      expect(season.save).to be(false)
    end

    it 'Can not contain two episodes with the same number' do
      episode = Episode.new(title: 'The Detail', number: 2, season: season_fact)
      episode_rep = Episode.new(title: 'The Buys', number: 2, season: season_fact)

      expect(episode.save).to be(true)
      expect(episode_rep.save).to be(false)
    end
  end
end
