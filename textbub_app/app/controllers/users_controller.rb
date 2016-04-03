class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
  end


  # def create
  #   @user = User.create(user_params)
  #   redirect_to user_path(@user)
  # end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:current_user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to new_user_path(@user)
    end
  end

  def show
    @reviews = Review.all
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
      redirect_to User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    session[:current_user_id] = nil
    @user.destroy
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :image, :password, :password_confirmation, :name, :handle, :business_name, :service_provided, :about_me, :city, :zipcode)
  end
end
