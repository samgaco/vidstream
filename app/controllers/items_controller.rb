# frozen_string_literal: true

class ItemsController < ApplicationController
  def index
    @items = (Movie.all + Season.all).sort_by(&:created_at)
    render json: @items
  end

  def show
    @items = (Movie.all + Season.all).sort_by(&:created_at)
    @purchase = Purchase.new
  end
end
