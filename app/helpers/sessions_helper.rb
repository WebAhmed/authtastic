module SessionsHelper

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !current_user.nil?
    # negating the negative equals true. Here it's sort of of like asking "is the current user not not valid?""
  end

end
