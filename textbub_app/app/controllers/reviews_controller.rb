class ReviewsController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    message_body = params["Body"]
    splitBody = message_body.split()
    handle = splitBody[0]
    from_number = params["From"]
    Review.where(handle: handle).each do |rev|
      if rev.review_phone == from_number
        @review = Review.create(content: message_body, review_phone: from_number, handle: handle)
      end
    end


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
