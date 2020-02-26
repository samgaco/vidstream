# frozen_string_literal: true

class LibrariesController < ApplicationController
  include LibrariesHelper
  def index
    @user = User.all.find_by(id: 1)
    @library = user_library(@user)
    render json: @library
  end

  def show
    @user = User.all.find_by(id: 1)
    @library = user_library(@user)
  end
end
