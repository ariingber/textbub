class BrowsersController < ApplicationController


  def index
    @reviews = Review.all
    @users = User.all
  end

  def new
  end

  def result
    @results = []
    #@reviews = Review.all
    @users = User.all
    @name = params["name"]
    @email = params["email"]
    @handle = params["handle"]
    @service_provided = params["service_provided"]
    @users.each do |user|
      if @name == user.name
        @results.push(user)
      elsif @email == user.email
        @results.push(user)
      elsif @handle == user.handle
        @results.push(user)
      elsif @service_provided == user.service_provided
        @results.push(user)
      end
    @results
    end
  end

  def search
    params
    redirect_to browsers_result_path(params)
  end
end
