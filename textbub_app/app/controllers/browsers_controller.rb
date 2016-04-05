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
    @reviews = Review.all
    @name = params["name"]
    @email = params["email"]
    @handle = params["handle"]
    @service_provided = params["service_provided"]
    @business_name = params["business_name"]
    @city = params["city"]
    @zipcode = params["zipcode"]
    @users.each do |user|
      if @name != '' && @name == user.name
        @results.push(user)
      elsif @email != '' && @email == user.email
        @results.push(user)
      elsif @handle != '' && @handle == user.handle
        @results.push(user)
      elsif @service_provided != '' && @service_provided == user.service_provided
        @results.push(user)
      elsif @business_name != '' && @business_name == user.business_name
        @results.push(user)
      elsif @city != '' && @city == user.city
        @results.push(user)
      elsif @zipcode != '' && @zipcode == user.zipcode
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
