# frozen_string_literal: true

class SeasonsController < ApplicationController
  def index
    @seasons = Season.includes(:episodes).order('number DESC').all.order('created_at DESC')
    render json: @seasons
  end
end
