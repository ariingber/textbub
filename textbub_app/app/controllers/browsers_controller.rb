class BrowsersController < ApplicationController


  def index
    @reviews = Review.all
    @users = User.all
  end

  def new
  end

  def search
    params
    binding.pry
    # compare params to review and users
  end
end
