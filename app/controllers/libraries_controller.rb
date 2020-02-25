# frozen_string_literal: true

class LibrariesController < ApplicationController
  def index
    @user = User.all.find_by(id: 1)
    @library = user_library(@user)
    render json: @library
  end
end
