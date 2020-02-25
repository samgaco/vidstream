# frozen_string_literal: true

class MoviesController < ApplicationController
  def index
    @movies = Movie.all.order('created_at DESC')
    render json: @movies
  end
end
