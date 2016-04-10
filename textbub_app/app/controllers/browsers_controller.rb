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
    @name = params["name"].downcase
    @email = params["email"]
    @handle = params["handle"]
    @service_provided = params["service_provided"]
    @business_name = params["business_name"]
    @city = params["city"]
    @zipcode = params["zipcode"]
    @users.each do |user|
      if @name != '' && @name.downcase == user.name.downcase
        @results.push(user)
      elsif @email != '' && @email.downcase == user.email.downcase
        @results.push(user)
      elsif @handle != '' && @handle.downcase == user.handle.downcase
        @results.push(user)
      elsif @service_provided != '' && @service_provided.downcase == user.service_provided.downcase
        @results.push(user)
      elsif @business_name != '' && @business_name.downcase == user.business_name.downcase
        @results.push(user)
      elsif @city != '' && @city.downcase == user.city.downcase
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
