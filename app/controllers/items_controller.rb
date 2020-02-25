# frozen_string_literal: true

class ItemsController < ApplicationController
  def index
    @items = (Movie.all + Season.all).sort_by(&:created_at)
    render json: @items
  end
end
