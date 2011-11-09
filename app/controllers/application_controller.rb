class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def require_user
    if session[:user_id]
      @user = User.find(session[:user_id])
    else
      flash[:notice] = "Please sign in or sign up!"
      redirect_to neighborhoods_url
    end
  end
  
end
