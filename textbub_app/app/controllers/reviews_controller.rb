class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    message_body = params["Body"]
    # from_number = params["From"]
    @review = Review.create(content: message_body)
    redirect_to review_path(@review)
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
