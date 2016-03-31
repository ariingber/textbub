class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    require 'sinatra'
    require 'twilio-ruby'
    content_type 'text/xml'
    response = Twilio::TwiML::Response.new do |r|
      r.Message 'Hey thanks for my message'
    end
    response.to_xml
  end

  def show
    @review = Review.find(params[:id])
  end

  def destroy
    @review = Review.find(params[:id])
    session[:current_user_id] = nil
    @Review.destroy
    redirect_to root_path
  end

  private

  def review_params
    params.require(:review)
  end
end
