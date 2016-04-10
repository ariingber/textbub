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
      if @name != '' && user.name.downcase.split.join('').include?(@name.downcase.split.join(''))
        @results.push(user)
      elsif @email != '' && user.email.downcase.split.join('').include?(@email.downcase.split.join(''))
        @results.push(user)
      elsif @handle != '' && user.handle.downcase.split.join('').include?(@handle.downcase.split.join(''))
        @results.push(user)
      elsif @service_provided != '' && user.service_provided.downcase.split.join('').include?(@service_provided.downcase.split.join(''))
        @results.push(user)
      elsif @business_name != '' && user.business_name.downcase.split.join('').include?(@business_name.downcase.split.join(''))
        @results.push(user)
      elsif @city != '' && user.city.downcase.split.join('').include?(@city.downcase.split.join(''))
        @results.push(user)
      elsif @zipcode != '' && user.zipcode.split.join('').include?(@zipcode.split.join(''))
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
