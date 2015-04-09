class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      redirect_to root_path, notice: "Congratulations you're now in the system!"
    else
      render 'new'
    end
  end

  private 
    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation)
    end
end
