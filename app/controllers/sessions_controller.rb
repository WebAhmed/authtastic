class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Welcome back!'
    else
      render 'new', notice: 'Something went wrong. Please try again'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'See you later!'
  end
end
