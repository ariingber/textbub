class SessionsController < ApplicationController
  def create
    user = User.find_by(name: params[:name])
    if user && user.authenticate(params[:password])
      session[:current_user_id] = user.id
      redirect_to root_path(user.id)
     else
       redirect_to root_path
     end
  end

  def destroy
    session[:current_user_id] = nil
    redirect_to root_path
  end
end
