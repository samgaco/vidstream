# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'

  get 'movies/index' 
  get 'movies/show'

  get 'seasons/index' => 'seasons#index'
  get 'seasons/show'

  get 'items/index' => 'items#index'
  get 'items/show'

  get 'libraries/index' => 'libraries#index'
  get 'libraries/show'

end
