# frozen_string_literal: true

class AddNumberToEpisode < ActiveRecord::Migration[6.0]
  def change
    add_column :episodes, :number, :integeer
  end
end
