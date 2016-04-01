class BrowsersController < ApplicationController


  def index
    @reviews = Review.all
    @users = User.all
  end

  def new
  end

  def result
    @display = []
    @reviews = Review.all
    @users = User.all
    @name = params["name"]
  end

  def search
    params
    redirect_to browsers_result_path(params)
  end
end
