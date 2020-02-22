# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Movie, type: :model do
  context 'When saving a movie' do
    it 'Should have a title' do
      movie = Movie.new(plot: 3)

      expect(movie.save).to be(false)
    end
  end
end
