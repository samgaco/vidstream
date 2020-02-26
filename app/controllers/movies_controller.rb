# frozen_string_literal: true

class MoviesController < ApplicationController
  def index
    @movies = Movie.all.order('created_at DESC')
    render json: @movies
  end

  def show 
    @movies = Movie.all.order('created_at DESC')
  end
end
